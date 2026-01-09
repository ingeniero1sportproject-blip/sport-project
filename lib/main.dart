// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gym_app/routes/app_routes.dart';
import 'package:gym_app/theme/theme_helper.dart';

import 'core/utils/initial_bindings.dart';
import 'localization/app_localization.dart';

// import 'core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print('Firebase initialization error: $e');
  }
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    // Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      // ignore: prefer_const_constructors
      fallbackLocale: Locale('en', 'US'),
      title: 'gym_app',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: (settings) {
        return AppRoutes.routesFactory(settings);
      },
      // getPages: AppRoutes.pages,
    );
  }
}
