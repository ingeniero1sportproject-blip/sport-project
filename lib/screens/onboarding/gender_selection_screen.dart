import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'measurements_screen.dart';

class GenderSelectionScreen extends StatefulWidget {
  final List<String> selectedSports;

  const GenderSelectionScreen({
    Key? key,
    required this.selectedSports,
  }) : super(key: key);

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? _selectedGender;

  final List<Map<String, dynamic>> _genders = [
    {
      'name': 'Male',
      'icon': Icons.male,
      'emoji': '👨',
    },
    {
      'name': 'Female',
      'icon': Icons.female,
      'emoji': '👩',
    },
    {
      'name': 'Other',
      'icon': Icons.person_outline,
      'emoji': '🧑',
    },
  ];

  void _selectGender(String gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

  void _continue() {
    if (_selectedGender == null) {
      Get.snackbar(
        'Selection Required',
        'Please select your gender',
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return;
    }

    // Navigate to measurements screen
    Get.to(() => MeasurementsScreen(
          selectedSports: widget.selectedSports,
          selectedGender: _selectedGender!,
        ));
  }

  @override
  Widget build(BuildContext context) {
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
                      value: 0.50,
                      backgroundColor: Colors.grey[300],
                      color: theme.colorScheme.primary,
                      minHeight: 4,
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(12)),
                  Text(
                    '2/4',
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
                        'Select your gender',
                        style: theme.textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(8)),

                      Text(
                        'This helps us personalize your experience',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(40)),

                      // Gender options
                      ...List.generate(_genders.length, (index) {
                        final gender = _genders[index];
                        final isSelected = _selectedGender == gender['name'];

                        return Padding(
                          padding: getPadding(bottom: 16),
                          child: GestureDetector(
                            onTap: () => _selectGender(gender['name']),
                            child: Container(
                              padding: getPadding(all: 24),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? theme.colorScheme.primary
                                        .withOpacity(0.1)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isSelected
                                      ? theme.colorScheme.primary
                                      : Colors.grey[300]!,
                                  width: isSelected ? 2 : 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  // Icon
                                  Container(
                                    padding: getPadding(all: 12),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? theme.colorScheme.primary
                                              .withOpacity(0.2)
                                          : Colors.grey[100],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      gender['icon'],
                                      size: getSize(32),
                                      color: isSelected
                                          ? theme.colorScheme.primary
                                          : Colors.grey[700],
                                    ),
                                  ),

                                  SizedBox(width: getHorizontalSize(16)),

                                  // Gender name
                                  Expanded(
                                    child: Text(
                                      gender['name'],
                                      style:
                                          theme.textTheme.titleLarge?.copyWith(
                                        fontWeight: isSelected
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                        color: isSelected
                                            ? theme.colorScheme.primary
                                            : Colors.black87,
                                      ),
                                    ),
                                  ),

                                  // Checkmark
                                  if (isSelected)
                                    Icon(
                                      Icons.check_circle,
                                      size: getSize(28),
                                      color: theme.colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),

            // Continue button
            Padding(
              padding: getPadding(all: 20),
              child: CustomElevatedButton(
                height: getVerticalSize(54),
                text: 'CONTINUE',
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles
                    .bodyLargeUniformProExtraCondensedOnErrorContainer,
                onTap: _continue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
