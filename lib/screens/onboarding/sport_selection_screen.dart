import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../services/auth_service.dart';  // ← Importar AuthService
import 'gender_selection_screen.dart';

class SportSelectionScreen extends StatefulWidget {
  const SportSelectionScreen({Key? key}) : super(key: key);

  @override
  State<SportSelectionScreen> createState() => _SportSelectionScreenState();
}

class _SportSelectionScreenState extends State<SportSelectionScreen> {
  final List<String> _selectedSports = [];

  final List<Map<String, dynamic>> _sports = [
    {'name': 'Football', 'emoji': '⚽', 'icon': Icons.sports_soccer},
    {'name': 'Basketball', 'emoji': '🏀', 'icon':  Icons.sports_basketball},
    {'name': 'Tennis', 'emoji': '🎾', 'icon': Icons.sports_tennis},
    {'name': 'Running', 'emoji': '🏃', 'icon':  Icons.directions_run},
    {'name': 'Gym/Fitness', 'emoji': '💪', 'icon': Icons.fitness_center},
    {'name': 'Cycling', 'emoji': '🚴', 'icon': Icons.directions_bike},
    {'name': 'Swimming', 'emoji': '🏊', 'icon':  Icons.pool},
    {'name': 'Yoga', 'emoji': '🧘', 'icon': Icons.self_improvement},
    {'name': 'Other', 'emoji': '➕', 'icon': Icons. add_circle_outline},
  ];

  @override
  void initState() {
    super.initState();
    _checkOnboardingStatus();
  }

  Future<void> _checkOnboardingStatus() async {
    // Hacer el check en background sin bloquear la UI
    try {
      final authService = Get.find<AuthService>();
      final onboardingCompleted = await authService.checkOnboardingStatus();
      
      if (onboardingCompleted && mounted) {
        // Si ya completó onboarding, saltar al home
        debugPrint('✅ Onboarding already completed, redirecting to home');
        Get.offAllNamed(AppRoutes.homeContainerScreen);
      } else {
        debugPrint('🔵 Onboarding not completed, staying on sport selection');
      }
    } catch (e) {
      debugPrint('⚠️ Error checking onboarding status: $e');
      // Si falla, dejar que continúe con onboarding
    }
  }

  void _toggleSport(String sport) {
    setState(() {
      if (_selectedSports.contains(sport)) {
        _selectedSports.remove(sport);
      } else {
        _selectedSports.add(sport);
      }
    });
  }

  void _continue() {
    if (_selectedSports.isEmpty) {
      Get.snackbar(
        'Selection Required',
        'Please select at least one sport',
        backgroundColor: Colors.orange,
        colorText: Colors. white,
      );
      return;
    }

    debugPrint('🔵 Selected sports: $_selectedSports');

    // Navigate to gender selection
    Get.to(() => GenderSelectionScreen(selectedSports: _selectedSports));
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
                      value: 0.25,
                      backgroundColor: Colors.grey[300],
                      color: theme.colorScheme. primary,
                      minHeight:  4,
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(12)),
                  Text(
                    '1/4',
                    style: theme. textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child:  Padding(
                  padding:  getPadding(all: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        "What's your sport?",
                        style: theme.textTheme.headlineLarge?.copyWith(
                          fontWeight:  FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(8)),

                      Text(
                        'Select one or more sports you enjoy',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                        ),
                      ),

                      SizedBox(height: getVerticalSize(32)),

                      // Sports grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: getHorizontalSize(16),
                          mainAxisSpacing: getVerticalSize(16),
                          childAspectRatio:  1.1,
                        ),
                        itemCount: _sports.length,
                        itemBuilder: (context, index) {
                          final sport = _sports[index];
                          final isSelected =
                              _selectedSports.contains(sport['name']);

                          return GestureDetector(
                            onTap: () => _toggleSport(sport['name']),
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? theme.colorScheme.primary
                                        .withOpacity(0.1)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border:  Border.all(
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon
                                  Icon(
                                    sport['icon'],
                                    size:  getSize(48),
                                    color: isSelected
                                        ? theme.colorScheme. primary
                                        : Colors. grey[700],
                                  ),

                                  SizedBox(height: getVerticalSize(12)),

                                  // Sport name
                                  Text(
                                    sport['name'],
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: isSelected
                                          ?  FontWeight.bold
                                          : FontWeight.normal,
                                      color: isSelected
                                          ? theme.colorScheme.primary
                                          : Colors.black87,
                                    ),
                                    textAlign:  TextAlign.center,
                                  ),

                                  // Checkmark
                                  if (isSelected) ...[
                                    SizedBox(height: getVerticalSize(4)),
                                    Icon(
                                      Icons.check_circle,
                                      size: getSize(20),
                                      color: theme.colorScheme.primary,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Continue button
            Padding(
              padding:  getPadding(all: 20),
              child: CustomElevatedButton(
                height: getVerticalSize(54),
                text: 'CONTINUE',
                buttonStyle: CustomButtonStyles. fillPrimary,
                buttonTextStyle: CustomTextStyles
                    .bodyLargeUniformProExtraCondensedOnErrorContainer,
                onTap:  _continue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}