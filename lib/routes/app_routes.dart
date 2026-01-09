import 'package:flutter/cupertino.dart';
import 'package:gym_app/presentation/splash_screen/splash_screen.dart';
import 'package:gym_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:gym_app/presentation/login_filled_tab_container_screen/login_filled_tab_container_screen.dart';
import 'package:gym_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:gym_app/presentation/verification_screen/verification_screen.dart';
import 'package:gym_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:gym_app/presentation/password_changed_popup_screen/password_changed_popup_screen.dart';
import 'package:gym_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:gym_app/presentation/search_fill_screen/search_fill_screen.dart';
import 'package:gym_app/presentation/categories_screen/categories_screen.dart';
import 'package:gym_app/presentation/health_tips_screen/health_tips_screen.dart';
import 'package:gym_app/presentation/exercise_screen/exercise_screen.dart';
import 'package:gym_app/presentation/popular_work_out_screen/popular_work_out_screen.dart';
import 'package:gym_app/presentation/detail_gym_tab_container_screen/detail_gym_tab_container_screen.dart';
import 'package:gym_app/presentation/full_workout_plan_screen/full_workout_plan_screen.dart';
import 'package:gym_app/presentation/select_plan_screen/select_plan_screen.dart';
import 'package:gym_app/presentation/recommended_workout_one_screen/recommended_workout_one_screen.dart';
import 'package:gym_app/presentation/trending_screen/trending_screen.dart';
import 'package:gym_app/presentation/blog_screen/blog_screen.dart';
import 'package:gym_app/presentation/blog_detail_screen/blog_detail_screen.dart';
import 'package:gym_app/presentation/notifications_screen/notifications_screen.dart';
import 'package:gym_app/presentation/find_a_workout_plan_screen/find_a_workout_plan_screen.dart';
import 'package:gym_app/presentation/find_a_workout_plan_goal_screen/find_a_workout_plan_choose_goal_screen.dart';
import 'package:gym_app/presentation/choose_level_popup_screen/choose_level_popup_screen.dart';
import 'package:gym_app/presentation/find_a_workout_plan_number_weeks_screen/find_a_workout_plan_number_weeks_screen.dart';
import 'package:gym_app/presentation/find_a_workout_plan_one_screen/find_a_workout_plan_one_screen.dart';
import 'package:gym_app/presentation/create_plan_screen/create_plan_screen.dart';
import 'package:gym_app/presentation/introduction_screen/introduction_screen.dart';
import 'package:gym_app/presentation/your_body_components_screen/your_body_composition_consists_components_screen.dart';
import 'package:gym_app/presentation/week_one_screen/week_one_screen.dart';
import 'package:gym_app/presentation/select_muscle_screen/select_muscle_screen.dart';
import 'package:gym_app/presentation/recommended_workout_tab_screen/recommended_workout_tab_container_screen.dart';
import 'package:gym_app/presentation/sets_and_reps_screen/sets_and_reps_screen.dart';
import 'package:gym_app/presentation/select_muscle_one_screen/select_muscle_one_screen.dart';
import 'package:gym_app/presentation/your_body_components_one_screen/your_body_composition_consists_components_one_screen.dart';
import 'package:gym_app/presentation/week_1_day_one_screen/week_1_day_one_screen.dart';
import 'package:gym_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:gym_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:gym_app/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:gym_app/presentation/settings_screen/settings_screen.dart';
import 'package:gym_app/presentation/about_us_screen/about_us_screen.dart';
import 'package:gym_app/presentation/help_screen/help_screen.dart';
import 'package:gym_app/presentation/feedback_screen/feedback_screen.dart';
import 'package:gym_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:gym_app/presentation/premium_screen/premium_screen.dart';
import 'package:gym_app/presentation/select_payment_method_screen/select_payment_method_screen.dart';
import 'package:gym_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:gym_app/presentation/confirm_payment_screen/confirm_payment_screen.dart';
import 'package:gym_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:page_transition/page_transition.dart';

// Firebase Auth Screens
import 'package:gym_app/screens/auth/login_screen.dart';
import 'package:gym_app/screens/auth/otp_verification_screen.dart';

// Onboarding Screens
import 'package:gym_app/screens/onboarding/sport_selection_screen.dart';
import 'package:gym_app/screens/onboarding/gender_selection_screen.dart';
import 'package:gym_app/screens/onboarding/measurements_screen.dart';
import 'package:gym_app/screens/onboarding/photo_upload_screen.dart';

import '../presentation/challenges_page/challenges_page.dart';
import '../presentation/chest_gym_exercise_page/chest_gym_exercise_page.dart';
import '../presentation/chest_home_exercise_page/chest_home_exercise_page.dart';
import '../presentation/chest_stretches_page/chest_stretches_page.dart';
import '../presentation/detail_gym_page/detail_gym_page.dart';
import '../presentation/detail_home_page/detail_home_page.dart';
import '../presentation/health_tips_details_screen/health_tips_details_screen.dart';
import '../presentation/home_page/home_page.dart';
import '../presentation/profile_page/profile_page.dart';
import '../presentation/recommended_detail/recommended_workout_detail_screen.dart';
import '../presentation/select_muscle_tab/selectmuscletabScreen.dart';
import '../presentation/trending_detail/trending_detail_screen.dart';
import '../presentation/workout_plan_page/workout_plan_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginPage = '/login_page';

  // New Firebase Auth Login Screen
  static const String firebaseLoginScreen = '/firebase_login_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String loginErrorPage = '/login_error_page';

  static const String loginFilledPage = '/login_filled_page';

  static const String sportSelectionScreen = '/sport_selection_screen';

  static const String loginFilledTabContainerScreen =
      '/login_filled_tab_container_screen';

  static const String signupPage = '/signup_page';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String passwordChangedPopupScreen =
      '/password_changed_popup_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String searchFillScreen = '/search_fill_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String healthTipsScreen = '/health_tips_screen';

  static const String healthTipsDetailsScreen = '/health_tips_details_screen';

  static const String exerciseScreen = '/exercise_screen';

  static const String chestGymExercisePage = '/chest_gym_exercise_page';

  static const String chestHomeExercisePage = '/chest_home_exercise_page';

  static const String chestStretchesPage = '/chest_stretches_page';

  static const String popularWorkOutScreen = '/popular_work_out_screen';

  static const String detailGymPage = '/detail_gym_page';

  static const String detailGymTabContainerScreen = '/detail_gym_tab_container_screen';
  static const String trendingDetailScreen = '/dtrending_detail_screen';
  static const String recommendedDetailScreen = '/recommended_detail_screen';

  static const String detailHomePage = '/detail_home_page';

  static const String fullWorkoutPlanScreen = '/full_workout_plan_screen';

  static const String selectPlanScreen = '/select_plan_screen';

  static const String recommendedWorkoutOneScreen =
      '/recommended_workout_one_screen';

  static const String trendingScreen = '/trending_screen';

  static const String blogScreen = '/blog_screen';

  static const String blogDetailScreen = '/blog_detail_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String workoutPlanPage = '/workout_plan_page';

  static const String findAWorkoutPlanScreen = '/find_a_workout_plan_screen';

  static const String findAWorkoutPlanChooseGoalScreen =
      '/find_a_workout_plan_choose_goal_screen';

  static const String chooseLevelPopupScreen = '/choose_level_popup_screen';

  static const String findAWorkoutPlanChooseNumberWeeksScreen =
      '/find_a_workout_plan_choose_number_weeks_screen';

  static const String findAWorkoutPlanOneScreen =
      '/find_a_workout_plan_one_screen';

  static const String createPlanScreen = '/create_plan_screen';


  static const String introductionScreen = '/introduction_screen';

  static const String yourBodyCompositionConsistsComponentsScreen =
      '/your_body_composition_consists_components_screen';

  static const String weekOneScreen = '/week_one_screen';

  static const String selectMuscleScreen = '/select_muscle_screen';
  static const String selectMuscleTabScreen = '/select_muscle_tab_screen';

  static const String recommendedWorkoutPage = '/recommended_workout_page';

  static const String recommendedWorkoutTabContainerScreen =
      '/recommended_workout_tab_container_screen';

  static const String setsAndRepsScreen = '/sets_and_reps_screen';

  static const String selectMuscleOneScreen = '/select_muscle_one_screen';

  static const String challengesPage = '/challenges_page';

  static const String yourBodyCompositionConsistsComponentsOneScreen =
      '/your_body_composition_consists_components_one_screen';

  static const String week1DayOneScreen = '/week_1_day_one_screen';

  static const String profilePage = '/profile_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String settingsScreen = '/settings_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String helpScreen = '/help_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String premiumScreen = '/premium_screen';

  static const String selectPaymentMethodScreen =
      '/select_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  // Onboarding routes
  static const String genderSelectionScreen = '/gender_selection_screen';
  static const String measurementsScreen = '/measurements_screen';
  static const String photoUploadScreen = '/photo_upload_screen';


  static const String initialRoute = '/initialRoute';


  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashScreen: (context) =>  SplashScreen(),
  };
  static getPage(var child, var settings) {
    var type = PageTransitionType.rightToLeft;
    return PageTransition(
      child: child,
      type: type,
      settings: settings,

    );
  }

  static routesFactory(settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return getPage(SplashScreen(), settings);
      case AppRoutes.onboardingOneScreen:
        return getPage(OnboardingOneScreen(), settings);
      case AppRoutes.firebaseLoginScreen:
        return getPage(LoginScreen(), settings);
      case AppRoutes.loginFilledTabContainerScreen:
        return getPage(LoginFilledTabContainerScreen(), settings);
      case AppRoutes.forgotPasswordScreen:
        return getPage(ForgotPasswordScreen(), settings);
      case AppRoutes.verificationScreen:
        return getPage(VerificationScreen(), settings);
      case AppRoutes.resetPasswordScreen:
        return getPage(ResetPasswordScreen(), settings);
      case AppRoutes.passwordChangedPopupScreen:
        return getPage(PasswordChangedPopupScreen(), settings);
      case AppRoutes.homePage:
        return getPage(HomePage(), settings);
      case AppRoutes.homeContainerScreen:
        return getPage(HomeContainerScreen(), settings);
      case AppRoutes.searchFillScreen:
        return getPage(SearchFillScreen(), settings);
      case AppRoutes.categoriesScreen:
        return getPage(CategoriesScreen(), settings);
      case AppRoutes.healthTipsScreen:
        return getPage(HealthTipsScreen(), settings);
      case AppRoutes.healthTipsDetailsScreen:
        return getPage(HealthTipsDetailsScreen(), settings);
      case AppRoutes.exerciseScreen:
        return getPage(ExerciseScreen(), settings);
      case AppRoutes.chestGymExercisePage:
        return getPage(ChestGymExercisePage(), settings);
      case AppRoutes.chestHomeExercisePage:
        return getPage(ChestHomeExercisePage(), settings);
      case AppRoutes.chestStretchesPage:
        return getPage(ChestStretchesPage(), settings);
      case AppRoutes.popularWorkOutScreen:
        return getPage(PopularWorkOutScreen(), settings);
      case AppRoutes.detailGymPage:
        return getPage(DetailGymPage(), settings);
      case AppRoutes.detailGymTabContainerScreen:
        return getPage(DetailGymTabContainerScreen(), settings);
      case AppRoutes.trendingDetailScreen:
        return getPage(TrendingDetailScreen(), settings);
      case AppRoutes.recommendedDetailScreen:
        return getPage(RecommendedDetailScreen(), settings);
      case AppRoutes.detailHomePage:
        return getPage(DetailHomePage(), settings);
      case AppRoutes.fullWorkoutPlanScreen:
        return getPage(FullWorkoutPlanScreen(), settings);
      case AppRoutes.selectPlanScreen:
        return getPage(SelectPlanScreen(), settings,);
    case AppRoutes.recommendedWorkoutOneScreen:
      return getPage(RecommendedWorkoutOneScreen(), settings);
      case AppRoutes.trendingScreen:
        return getPage(TrendingScreen(), settings);
      case AppRoutes.blogScreen:
        return getPage(BlogScreen(), settings);
      case AppRoutes.blogDetailScreen:
        return getPage(BlogDetailScreen(), settings);
      case AppRoutes.notificationsScreen:
        return getPage(NotificationsScreen(), settings);
      case AppRoutes.workoutPlanPage:
        return getPage(WorkoutPlanPage(), settings);
      case AppRoutes.findAWorkoutPlanScreen:
        return getPage(FindAWorkoutPlanScreen(), settings);
      case AppRoutes.findAWorkoutPlanChooseGoalScreen:
        return getPage(FindAWorkoutPlanChooseGoalScreen(), settings);
      case AppRoutes.chooseLevelPopupScreen:
        return getPage(ChooseLevelPopupScreen(), settings);
      case AppRoutes.findAWorkoutPlanChooseNumberWeeksScreen:
        return getPage(FindAWorkoutPlanChooseNumberWeeksScreen(), settings);
      case AppRoutes.findAWorkoutPlanOneScreen:
        return getPage(FindAWorkoutPlanOneScreen(), settings);
      case AppRoutes.myProfileScreen:
        return getPage(MyProfileScreen(), settings);
      case AppRoutes.editProfileScreen:
        return getPage(EditProfileScreen(), settings);
      case AppRoutes.createPlanScreen:
        return getPage(CreatePlanScreen(), settings);
      case AppRoutes.introductionScreen:
        return getPage(IntroductionScreen(), settings);
    case AppRoutes.yourBodyCompositionConsistsComponentsScreen:
      return getPage(YourBodyCompositionConsistsComponentsScreen(), settings);
      case AppRoutes.weekOneScreen:
        return getPage(WeekOneScreen(), settings);
      case AppRoutes.selectMuscleScreen:
        return getPage(SelectMuscleScreen(), settings);
    case AppRoutes.selectMuscleTabScreen:
      return getPage(SelectMuscleTab(), settings);
      // case AppRoutes.recommendedWorkoutPage:
      //   return getPage(RecommendedWorkoutPage(), settings);
      case AppRoutes.recommendedWorkoutTabContainerScreen:
        return getPage(RecommendedWorkoutTabContainerScreen(), settings);
      case AppRoutes.setsAndRepsScreen:
        return getPage(SetsAndRepsScreen(), settings);
      case AppRoutes.selectMuscleOneScreen:
        return getPage(SelectMuscleOneScreen(), settings);
      case AppRoutes.challengesPage:
        return getPage(ChallengesPage(), settings);
      case AppRoutes.yourBodyCompositionConsistsComponentsOneScreen:
        return getPage(YourBodyCompositionConsistsComponentsOneScreen(), settings);
      case AppRoutes.week1DayOneScreen:
        return getPage(Week1DayOneScreen(), settings);
      case AppRoutes.profilePage:
        return getPage(ProfilePage(), settings);
      case AppRoutes.wishlistScreen:
        return getPage(WishlistScreen(), settings);
    case AppRoutes.settingsScreen:
      return getPage(SettingsScreen(), settings);
      case AppRoutes.aboutUsScreen:
        return getPage(AboutUsScreen(), settings);
      case AppRoutes.helpScreen:
        return getPage(HelpScreen(), settings);
      case AppRoutes.feedbackScreen:
        return getPage(FeedbackScreen(), settings);
      case AppRoutes.privacyPolicyScreen:
        return getPage(PrivacyPolicyScreen(), settings);
      case AppRoutes.premiumScreen:
        return getPage(PremiumScreen(), settings);
      case AppRoutes.selectPaymentMethodScreen:
        return getPage(SelectPaymentMethodScreen(), settings);
      case AppRoutes.addNewCardScreen:
        return getPage(AddNewCardScreen(), settings);
      case AppRoutes.confirmPaymentScreen:
        return getPage(ConfirmPaymentScreen(), settings);
      case AppRoutes.appNavigationScreen:
        return getPage(AppNavigationScreen(), settings);
      case AppRoutes.sportSelectionScreen:
        return getPage(SportSelectionScreen(), settings);
      case AppRoutes.genderSelectionScreen:
        return getPage(GenderSelectionScreen(selectedSports: []), settings);
      case AppRoutes.measurementsScreen:
        return getPage(MeasurementsScreen(selectedSports: [], selectedGender: ''), settings);
      case AppRoutes.photoUploadScreen:
        return getPage(PhotoUploadScreen(selectedSports: [], selectedGender: '', height: {}, weight: {}), settings);
      case AppRoutes.initialRoute:
        return getPage(SplashScreen(), settings);
      default:
        return null;
    }
  }













}
