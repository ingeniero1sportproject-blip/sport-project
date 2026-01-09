import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'photo_upload_screen.dart';

class MeasurementsScreen extends StatefulWidget {
  final List<String> selectedSports;
  final String selectedGender;

  const MeasurementsScreen({
    Key? key,
    required this.selectedSports,
    required this.selectedGender,
  }) : super(key: key);

  @override
  State<MeasurementsScreen> createState() => _MeasurementsScreenState();
}

class _MeasurementsScreenState extends State<MeasurementsScreen> {
  // Height
  String _heightUnit = 'cm';
  double _heightCm = 170.0;
  int _heightFeet = 5;
  int _heightInches = 7;

  // Weight
  String _weightUnit = 'kg';
  double _weightKg = 70.0;
  double _weightLbs = 154.0;

  // Height range: 100-250 cm / 3'3"-8'2"
  static const double minHeightCm = 100.0;
  static const double maxHeightCm = 250.0;

  // Weight range: 30-300 kg / 66-660 lbs
  static const double minWeightKg = 30.0;
  static const double maxWeightKg = 300.0;

  void _toggleHeightUnit() {
    setState(() {
      if (_heightUnit == 'cm') {
        // Convert cm to feet/inches
        double totalInches = _heightCm / 2.54;
        _heightFeet = (totalInches / 12).floor();
        _heightInches = (totalInches % 12).round();
        _heightUnit = 'ft-in';
      } else {
        // Convert feet/inches to cm
        double totalInches = (_heightFeet * 12) + _heightInches.toDouble();
        _heightCm = totalInches * 2.54;
        _heightUnit = 'cm';
      }
    });
  }

  void _toggleWeightUnit() {
    setState(() {
      if (_weightUnit == 'kg') {
        _weightLbs = _weightKg * 2.20462;
        _weightUnit = 'lbs';
      } else {
        _weightKg = _weightLbs / 2.20462;
        _weightUnit = 'kg';
      }
    });
  }

  void _continue() {
    // Validate ranges
    if (_heightCm < minHeightCm || _heightCm > maxHeightCm) {
      Get.snackbar(
        'Invalid Height',
        'Please enter a valid height (100-250 cm)',
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return;
    }

    if (_weightKg < minWeightKg || _weightKg > maxWeightKg) {
      Get.snackbar(
        'Invalid Weight',
        'Please enter a valid weight (30-300 kg)',
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return;
    }

    // Prepare height and weight data (normalized to cm and kg)
    Map<String, dynamic> height = {
      'value': _heightCm,
      'unit': 'cm',
      'displayUnit': _heightUnit, // Store preferred display unit
    };

    Map<String, dynamic> weight = {
      'value': _weightKg,
      'unit': 'kg',
      'displayUnit': _weightUnit, // Store preferred display unit
    };

    // Navigate to photo upload screen
    Get.to(() => PhotoUploadScreen(
          selectedSports: widget.selectedSports,
          selectedGender: widget.selectedGender,
          height: height,
          weight: weight,
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
                      value: 0.75,
                      backgroundColor: Colors.grey[300],
                      color: theme.colorScheme.primary,
                      minHeight: 4,
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(12)),
                  Text(
                    '3/4',
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
                        'Tell us about yourself',
                        style: theme.textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(8)),

                      Text(
                        'Help us personalize your workout plans',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(40)),

                      // Height Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Height',
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: _toggleHeightUnit,
                            child: Container(
                              padding: getPadding(
                                left: 12,
                                right: 12,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary
                                    .withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              child: Text(
                                _heightUnit,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: getVerticalSize(16)),

                      // Height display and slider
                      Container(
                        padding: getPadding(all: 24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Display value
                            Text(
                              _heightUnit == 'cm'
                                  ? '${_heightCm.toStringAsFixed(0)} cm'
                                  : '$_heightFeet\' $_heightInches"',
                              style: theme.textTheme.displaySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.primary,
                              ),
                            ),

                            SizedBox(height: getVerticalSize(16)),

                            // Slider
                            if (_heightUnit == 'cm')
                              Slider(
                                value: _heightCm,
                                min: minHeightCm,
                                max: maxHeightCm,
                                divisions: 150,
                                activeColor: theme.colorScheme.primary,
                                onChanged: (value) {
                                  setState(() {
                                    _heightCm = value;
                                  });
                                },
                              )
                            else
                              Column(
                                children: [
                                  // Feet slider
                                  Row(
                                    children: [
                                      Text('Feet: ',
                                          style: theme.textTheme.bodyMedium),
                                      Expanded(
                                        child: Slider(
                                          value: _heightFeet.toDouble(),
                                          min: 3,
                                          max: 8,
                                          divisions: 5,
                                          activeColor:
                                              theme.colorScheme.primary,
                                          onChanged: (value) {
                                            setState(() {
                                              _heightFeet = value.toInt();
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Inches slider
                                  Row(
                                    children: [
                                      Text('Inches: ',
                                          style: theme.textTheme.bodyMedium),
                                      Expanded(
                                        child: Slider(
                                          value: _heightInches.toDouble(),
                                          min: 0,
                                          max: 11,
                                          divisions: 11,
                                          activeColor:
                                              theme.colorScheme.primary,
                                          onChanged: (value) {
                                            setState(() {
                                              _heightInches = value.toInt();
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),

                      SizedBox(height: getVerticalSize(32)),

                      // Weight Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Weight',
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: _toggleWeightUnit,
                            child: Container(
                              padding: getPadding(
                                left: 12,
                                right: 12,
                                top: 6,
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary
                                    .withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              child: Text(
                                _weightUnit,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: getVerticalSize(16)),

                      // Weight display and slider
                      Container(
                        padding: getPadding(all: 24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Display value
                            Text(
                              _weightUnit == 'kg'
                                  ? '${_weightKg.toStringAsFixed(1)} kg'
                                  : '${_weightLbs.toStringAsFixed(1)} lbs',
                              style: theme.textTheme.displaySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.primary,
                              ),
                            ),

                            SizedBox(height: getVerticalSize(16)),

                            // Slider
                            Slider(
                              value: _weightUnit == 'kg'
                                  ? _weightKg
                                  : _weightLbs,
                              min: _weightUnit == 'kg'
                                  ? minWeightKg
                                  : minWeightKg * 2.20462,
                              max: _weightUnit == 'kg'
                                  ? maxWeightKg
                                  : maxWeightKg * 2.20462,
                              divisions: 270,
                              activeColor: theme.colorScheme.primary,
                              onChanged: (value) {
                                setState(() {
                                  if (_weightUnit == 'kg') {
                                    _weightKg = value;
                                  } else {
                                    _weightLbs = value;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
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
