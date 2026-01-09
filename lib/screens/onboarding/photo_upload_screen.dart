import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../services/onboarding_service.dart';

class PhotoUploadScreen extends StatefulWidget {
  final List<String> selectedSports;
  final String selectedGender;
  final Map<String, dynamic> height;
  final Map<String, dynamic> weight;

  const PhotoUploadScreen({
    Key? key,
    required this.selectedSports,
    required this.selectedGender,
    required this.height,
    required this.weight,
  }) : super(key: key);

  @override
  State<PhotoUploadScreen> createState() => _PhotoUploadScreenState();
}

class _PhotoUploadScreenState extends State<PhotoUploadScreen> {
  final OnboardingService _onboardingService = OnboardingService();
  final ImagePicker _picker = ImagePicker();
  final List<File?> _photos = [null, null, null, null];
  bool _isLoading = false;

  Future<void> _checkAndRequestPermission(ImageSource source) async {
    Permission permission =
        source == ImageSource.camera ? Permission.camera : Permission.photos;

    PermissionStatus status = await permission.status;

    if (status.isDenied) {
      status = await permission.request();
    }

    if (status.isGranted) {
      _pickImage(source);
    } else if (status.isPermanentlyDenied) {
      Get.snackbar(
        'Permission Required',
        'Please enable ${source == ImageSource.camera ? 'camera' : 'photo'} permission in settings',
        backgroundColor: Colors.orange,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
      );
      await openAppSettings();
    } else {
      Get.snackbar(
        'Permission Denied',
        'Unable to access ${source == ImageSource.camera ? 'camera' : 'gallery'}',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        maxWidth: 1920,
        maxHeight: 1920,
        imageQuality: 85,
      );

      if (image != null) {
        setState(() {
          // Find first empty slot
          int emptyIndex = _photos.indexWhere((photo) => photo == null);
          if (emptyIndex != -1) {
            _photos[emptyIndex] = File(image.path);
          }
        });
      }
    } catch (e) {
      debugPrint('Error picking image: $e');
      Get.snackbar(
        'Error',
        'Failed to pick image: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void _removePhoto(int index) {
    setState(() {
      _photos[index] = null;
    });
  }

  void _showImageSourceDialog() {
    Get.bottomSheet(
      Container(
        padding: getPadding(all: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Photo',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getVerticalSize(20)),
            ListTile(
              leading: Icon(Icons.camera_alt, color: theme.colorScheme.primary),
              title: const Text('Take Photo'),
              onTap: () {
                Get.back();
                _checkAndRequestPermission(ImageSource.camera);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library,
                  color: theme.colorScheme.primary),
              title: const Text('Choose from Gallery'),
              onTap: () {
                Get.back();
                _checkAndRequestPermission(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _finish() async {
    setState(() {
      _isLoading = true;
    });

    try {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        throw Exception('No user logged in');
      }

      // Upload photos if any
      List<String> photoUrls = [];
      List<File> validPhotos =
          _photos.whereType<File>().toList();

      if (validPhotos.isNotEmpty) {
        photoUrls = await _onboardingService.uploadPhotos(
          uid: currentUser.uid,
          photos: validPhotos,
        );
      }

      // Save all onboarding data
      await _onboardingService.saveOnboardingData(
        uid: currentUser.uid,
        sports: widget.selectedSports,
        gender: widget.selectedGender,
        height: widget.height,
        weight: widget.weight,
        photoUrls: photoUrls,
      );

      // Navigate to home
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }

      Get.offAllNamed(AppRoutes.homeContainerScreen);

      Get.snackbar(
        'Success',
        'Profile setup complete!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } catch (e) {
      debugPrint('Error completing onboarding: $e');

      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }

      Get.snackbar(
        'Error',
        'Failed to complete profile setup: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _skip() async {
    // Show confirmation dialog
    bool? confirm = await Get.dialog<bool>(
      AlertDialog(
        title: const Text('Skip Photos?'),
        content: const Text(
            'You can always add photos later from your profile settings.'),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Get.back(result: true),
            child: const Text('Skip'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      _finish();
    }
  }

  @override
  Widget build(BuildContext context) {
    int photoCount = _photos.where((photo) => photo != null).length;

    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onErrorContainer,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Progress indicator
            Padding(
              padding: getPadding(all: 20),
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 1.0,
                      backgroundColor: Colors.grey[300],
                      color: theme.colorScheme.primary,
                      minHeight: 4,
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(12)),
                  Text(
                    '4/4',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(all: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        'Add your photos',
                        style: theme.textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(8)),

                      Text(
                        'Help others recognize you (Optional)',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(32)),

                      // Photo grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: getHorizontalSize(16),
                          mainAxisSpacing: getVerticalSize(16),
                          childAspectRatio: 0.8,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          File? photo = _photos[index];

                          return GestureDetector(
                            onTap: photo == null ? _showImageSourceDialog : null,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.grey[300]!,
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: photo == null
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_a_photo,
                                          size: getSize(48),
                                          color: Colors.grey[400],
                                        ),
                                        SizedBox(height: getVerticalSize(8)),
                                        Text(
                                          'Add Photo',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    )
                                  : Stack(
                                      children: [
                                        // Image
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: Image.file(
                                            photo,
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),

                                        // Remove button
                                        Positioned(
                                          top: 8,
                                          right: 8,
                                          child: GestureDetector(
                                            onTap: () => _removePhoto(index),
                                            child: Container(
                                              padding: getPadding(all: 6),
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.close,
                                                size: getSize(20),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          );
                        },
                      ),

                      SizedBox(height: getVerticalSize(24)),

                      // Photo count
                      Center(
                        child: Text(
                          '$photoCount of 4 photos added',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Action buttons
            Padding(
              padding: getPadding(all: 20),
              child: Column(
                children: [
                  // Finish button
                  CustomElevatedButton(
                    height: getVerticalSize(54),
                    text: _isLoading ? 'FINISHING...' : 'FINISH',
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles
                        .bodyLargeUniformProExtraCondensedOnErrorContainer,
                    onTap: _isLoading ? null : _finish,
                  ),

                  SizedBox(height: getVerticalSize(12)),

                  // Skip button
                  TextButton(
                    onPressed: _isLoading ? null : _skip,
                    child: Text(
                      'Skip for now',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
