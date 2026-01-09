// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gym_app/core/app_export.dart';

import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(width: getHorizontalSize(375),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(decoration: AppDecoration.white,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                    child: Text("lbl_app_navigation".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .black900,
                                            fontSize: getFontSize(20),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(left: 20),
                                    child: Text("msg_check_your_app_s".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .blueGray400,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Padding(padding: getPadding(top: 5),
                                child: Divider(height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.black900))
                          ])),
                  Expanded(child: SingleChildScrollView(child: Container(
                      decoration: AppDecoration.white,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [GestureDetector(onTap: () {
                            onTapSplashscreen();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_splash_screen".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_onboarding_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingTwo();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_onboarding_two".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingThree();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_onboarding_three".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginfilledTabContainer();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_login_filled_tab".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapForgotpassword();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapVerification();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_verification".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapResetpassword();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_reset_password".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPasswordchangedpopup();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_password_changed2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomeContainer();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_home_container".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSearch();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_search".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSearchfill();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_search_fill".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCategories();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_categories2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHealthtips();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_health_tips".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHealthtipsdetails();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_health_tips_details".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapExercise();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_exercise2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPopularworkout();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_popular_work_out".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDetailgymTabContainer();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_detail_gym_tab".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFullworkoutplan();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_full_workout_plan".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSelectplan();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_select_plan".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRecommendedworkoutOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_recommended_workout2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapTrending();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_trending".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBlog();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_blog2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBlogdetail();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_blog_detail".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNotifications();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_notifications2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFindaworkoutplan();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_find_a_workout_plan2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFindaworkoutplanchoosegoal();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_find_a_workout_plan3".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapChooselevelpopup();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_choose_level_popup".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFindaworkoutplanChoosenumberweeks();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_find_a_workout_plan4".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFindaworkoutplanOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_find_a_workout_plan5".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCreateplan();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_create_plan".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            // onTapYourbodycompositionconsistscomponentsTwo();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_your_body_composition".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIntroduction();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_introduction".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapYourbodycompositionconsistscomponents();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_your_body_composition2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWeekOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_week_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSelectmuscle();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_select_muscle".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRecommendedworkoutTabContainer();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_recommended_workout3".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSetsandreps();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_sets_and_reps".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSelectmuscleOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_select_muscle_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapYourbodycompositionconsistscomponentsOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_your_body_composition3".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWeek1dayOne();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_week_1_day_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyProfile();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_profile3".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapEditProfile();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_edit_profile2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWishlist();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_wishlist2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSettings();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_settings2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAboutus();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_about_us".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHelp();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_help".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFeedback();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_feedback2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPrivacypolicy();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_privacy_policy".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPremium();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_premium".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSelectpaymentmethod();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_select_payment_method2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAddnewcard();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_add_new_card2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapConfirmpayment();
                          }, child: Container(decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_confirm_payment2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ])))
                          ]))))
                ]))));
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashScreen.
  onTapSplashscreen() {
    Get.toNamed(AppRoutes.splashScreen,);
  }

  /// Navigates to the onboardingOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingOneScreen.
  onTapOnboardingOne() {
    Get.toNamed(AppRoutes.onboardingOneScreen,);
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingTwoScreen.
  onTapOnboardingTwo() {
    Get.toNamed(AppRoutes.onboardingTwoScreen,);
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the onboardingThreeScreen.
  onTapOnboardingThree() {
    Get.toNamed(AppRoutes.onboardingThreeScreen,);
  }

  /// Navigates to the loginFilledTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginFilledTabContainerScreen.
  onTapLoginfilledTabContainer() {
    Get.toNamed(AppRoutes.loginFilledTabContainerScreen,);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the forgotPasswordScreen.
  onTapForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen,);
  }

  /// Navigates to the verificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the verificationScreen.
  onTapVerification() {
    Get.toNamed(AppRoutes.verificationScreen,);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the resetPasswordScreen.
  onTapResetpassword() {
    Get.toNamed(AppRoutes.resetPasswordScreen,);
  }

  /// Navigates to the passwordChangedPopupScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the passwordChangedPopupScreen.
  onTapPasswordchangedpopup() {
    Get.toNamed(AppRoutes.passwordChangedPopupScreen,);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeContainerScreen.
  onTapHomeContainer() {
    Get.toNamed(AppRoutes.homeContainerScreen,);
  }

  /// Navigates to the searchScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the searchScreen.
  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen,);
  }

  /// Navigates to the searchFillScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the searchFillScreen.
  onTapSearchfill() {
    Get.toNamed(AppRoutes.searchFillScreen,);
  }

  /// Navigates to the categoriesScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the categoriesScreen.
  onTapCategories() {
    Get.toNamed(AppRoutes.categoriesScreen,);
  }

  /// Navigates to the healthTipsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the healthTipsScreen.
  onTapHealthtips() {
    Get.toNamed(AppRoutes.healthTipsScreen,);
  }

  /// Navigates to the healthTipsDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the healthTipsDetailsScreen.
  onTapHealthtipsdetails() {
    Get.toNamed(AppRoutes.healthTipsDetailsScreen,);
  }

  /// Navigates to the exerciseScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the exerciseScreen.
  onTapExercise() {
    Get.toNamed(AppRoutes.exerciseScreen,);
  }

  /// Navigates to the popularWorkOutScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the popularWorkOutScreen.
  onTapPopularworkout() {
    Get.toNamed(AppRoutes.popularWorkOutScreen,);
  }

  /// Navigates to the detailGymTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the detailGymTabContainerScreen.
  onTapDetailgymTabContainer() {
    Get.toNamed(AppRoutes.detailGymTabContainerScreen,);
  }

  /// Navigates to the fullWorkoutPlanScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the fullWorkoutPlanScreen.
  onTapFullworkoutplan() {
    Get.toNamed(AppRoutes.fullWorkoutPlanScreen,);
  }

  /// Navigates to the selectPlanScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectPlanScreen.
  onTapSelectplan() {
    Get.toNamed(AppRoutes.selectPlanScreen,);
  }

  /// Navigates to the recommendedWorkoutOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the recommendedWorkoutOneScreen.
  onTapRecommendedworkoutOne() {
    Get.toNamed(AppRoutes.recommendedWorkoutOneScreen,);
  }

  /// Navigates to the trendingScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the trendingScreen.
  onTapTrending() {
    Get.toNamed(AppRoutes.trendingScreen,);
  }

  /// Navigates to the blogScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the blogScreen.
  onTapBlog() {
    Get.toNamed(AppRoutes.blogScreen,);
  }

  /// Navigates to the blogDetailScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the blogDetailScreen.
  onTapBlogdetail() {
    Get.toNamed(AppRoutes.blogDetailScreen,);
  }

  /// Navigates to the notificationsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the notificationsScreen.
  onTapNotifications() {
    Get.toNamed(AppRoutes.notificationsScreen,);
  }

  /// Navigates to the findAWorkoutPlanScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the findAWorkoutPlanScreen.
  onTapFindaworkoutplan() {
    Get.toNamed(AppRoutes.findAWorkoutPlanScreen,);
  }

  /// Navigates to the findAWorkoutPlanChooseGoalScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the findAWorkoutPlanChooseGoalScreen.
  onTapFindaworkoutplanchoosegoal() {
    Get.toNamed(AppRoutes.findAWorkoutPlanChooseGoalScreen,);
  }

  /// Navigates to the chooseLevelPopupScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the chooseLevelPopupScreen.
  onTapChooselevelpopup() {
    Get.toNamed(AppRoutes.chooseLevelPopupScreen,);
  }

  /// Navigates to the findAWorkoutPlanChooseNumberWeeksScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the findAWorkoutPlanChooseNumberWeeksScreen.
  onTapFindaworkoutplanChoosenumberweeks() {
    Get.toNamed(AppRoutes.findAWorkoutPlanChooseNumberWeeksScreen,);
  }

  /// Navigates to the findAWorkoutPlanOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the findAWorkoutPlanOneScreen.
  onTapFindaworkoutplanOne() {
    Get.toNamed(AppRoutes.findAWorkoutPlanOneScreen,);
  }

  /// Navigates to the createPlanScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the createPlanScreen.
  onTapCreateplan() {
    Get.toNamed(AppRoutes.createPlanScreen,);
  }



  /// Navigates to the introductionScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the introductionScreen.
  onTapIntroduction() {
    Get.toNamed(AppRoutes.introductionScreen,);
  }

  /// Navigates to the yourBodyCompositionConsistsComponentsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the yourBodyCompositionConsistsComponentsScreen.
  onTapYourbodycompositionconsistscomponents() {
    Get.toNamed(AppRoutes.yourBodyCompositionConsistsComponentsScreen,);
  }

  /// Navigates to the weekOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the weekOneScreen.
  onTapWeekOne() {
    Get.toNamed(AppRoutes.weekOneScreen,);
  }

  /// Navigates to the selectMuscleScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectMuscleScreen.
  onTapSelectmuscle() {
    Get.toNamed(AppRoutes.selectMuscleScreen,);
  }

  /// Navigates to the recommendedWorkoutTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the recommendedWorkoutTabContainerScreen.
  onTapRecommendedworkoutTabContainer() {
    Get.toNamed(AppRoutes.recommendedWorkoutTabContainerScreen,);
  }

  /// Navigates to the setsAndRepsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the setsAndRepsScreen.
  onTapSetsandreps() {
    Get.toNamed(AppRoutes.setsAndRepsScreen,);
  }

  /// Navigates to the selectMuscleOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectMuscleOneScreen.
  onTapSelectmuscleOne() {
    Get.toNamed(AppRoutes.selectMuscleOneScreen,);
  }

  /// Navigates to the yourBodyCompositionConsistsComponentsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the yourBodyCompositionConsistsComponentsOneScreen.
  onTapYourbodycompositionconsistscomponentsOne() {
    Get.toNamed(AppRoutes.yourBodyCompositionConsistsComponentsOneScreen,);
  }

  /// Navigates to the week1DayOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the week1DayOneScreen.
  onTapWeek1dayOne() {
    Get.toNamed(AppRoutes.week1DayOneScreen,);
  }

  /// Navigates to the myProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myProfileScreen.
  onTapMyProfile() {
    Get.toNamed(AppRoutes.myProfileScreen,);
  }

  /// Navigates to the editProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the editProfileScreen.
  onTapEditProfile() {
    Get.toNamed(AppRoutes.editProfileScreen,);
  }

  /// Navigates to the wishlistScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the wishlistScreen.
  onTapWishlist() {
    Get.toNamed(AppRoutes.wishlistScreen,);
  }

  /// Navigates to the settingsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the settingsScreen.
  onTapSettings() {
    Get.toNamed(AppRoutes.settingsScreen,);
  }

  /// Navigates to the aboutUsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the aboutUsScreen.
  onTapAboutus() {
    Get.toNamed(AppRoutes.aboutUsScreen,);
  }

  /// Navigates to the helpScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the helpScreen.
  onTapHelp() {
    Get.toNamed(AppRoutes.helpScreen,);
  }

  /// Navigates to the feedbackScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the feedbackScreen.
  onTapFeedback() {
    Get.toNamed(AppRoutes.feedbackScreen,);
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the privacyPolicyScreen.
  onTapPrivacypolicy() {
    Get.toNamed(AppRoutes.privacyPolicyScreen,);
  }

  /// Navigates to the premiumScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the premiumScreen.
  onTapPremium() {
    Get.toNamed(AppRoutes.premiumScreen,);
  }

  /// Navigates to the selectPaymentMethodScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the selectPaymentMethodScreen.
  onTapSelectpaymentmethod() {
    Get.toNamed(AppRoutes.selectPaymentMethodScreen,);
  }

  /// Navigates to the addNewCardScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the addNewCardScreen.
  onTapAddnewcard() {
    Get.toNamed(AppRoutes.addNewCardScreen,);
  }

  /// Navigates to the confirmPaymentScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the confirmPaymentScreen.
  onTapConfirmpayment() {
    Get.toNamed(AppRoutes.confirmPaymentScreen,);
  }
}
