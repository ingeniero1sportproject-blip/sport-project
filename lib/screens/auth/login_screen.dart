import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../services/auth_service.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'otp_verification_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = Get.put(AuthService());
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  String _completePhoneNumber = '';
  bool _isLoading = false;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _handlePhoneLogin() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_completePhoneNumber.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter a valid phone number',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      await _authService.sendPhoneVerificationCode(
        _completePhoneNumber,
        onCodeSent: (verificationId) {
          setState(() {
            _isLoading = false;
          });
          
          // Navigate to OTP verification screen
          Get.to(() => OTPVerificationScreen(
            phoneNumber: _completePhoneNumber,
            verificationId: verificationId,
          ));
        },
        onError: (error) {
          setState(() {
            _isLoading = false;
          });
          Get.snackbar(
            'Error',
            error,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        },
      );
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      Get.snackbar(
        'Error',
        'Failed to send verification code: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _handleGoogleSignIn() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final userCredential = await _authService.signInWithGoogle();
      
      setState(() {
        _isLoading = false;
      });

      if (userCredential != null) {
        Get.snackbar(
          'Success',
          'Signed in successfully',
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.offAllNamed(AppRoutes.homeContainerScreen);
      } else {
        Get.snackbar(
          'Cancelled',
          'Google sign-in was cancelled',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      Get.snackbar(
        'Error',
        'Failed to sign in with Google: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> _handleFacebookSignIn() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final userCredential = await _authService.signInWithFacebook();
      
      setState(() {
        _isLoading = false;
      });

      if (userCredential != null) {
        Get.snackbar(
          'Success',
          'Signed in successfully',
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.offAllNamed(AppRoutes.homeContainerScreen);
      } else {
        Get.snackbar(
          'Cancelled',
          'Facebook sign-in was cancelled',
          backgroundColor: Colors.orange,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      Get.snackbar(
        'Error',
        'Failed to sign in with Facebook: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: getPadding(all: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: getVerticalSize(60)),
                  
                  // Logo
                  Center(
                    child: CustomImageView(
                      svgPath: ImageConstant.imgGroup,
                      height: getSize(120),
                      width: getSize(120),
                    ),
                  ),
                  
                  SizedBox(height: getVerticalSize(40)),
                  
                  // Title
                  Text(
                    'Welcome Back!',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  SizedBox(height: getVerticalSize(8)),
                  
                  Text(
                    'Sign in to continue',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  SizedBox(height: getVerticalSize(40)),
                  
                  // Phone number input
                  IntlPhoneField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    initialCountryCode: 'US',
                    onChanged: (phone) {
                      _completePhoneNumber = phone.completeNumber;
                    },
                  ),
                  
                  SizedBox(height: getVerticalSize(24)),
                  
                  // Login button
                  CustomElevatedButton(
                    height: getVerticalSize(54),
                    text: _isLoading ? 'LOADING...' : 'LOGIN',
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.bodyLargeUniformProExtraCondensedOnErrorContainer,
                    onTap: _isLoading ? null : _handlePhoneLogin,
                  ),
                  
                  SizedBox(height: getVerticalSize(30)),
                  
                  // Divider with text
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 16, right: 16),
                        child: Text(
                          'Or continue with',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: getVerticalSize(30)),
                  
                  // Google Sign In Button
                  OutlinedButton.icon(
                    onPressed: _isLoading ? null : _handleGoogleSignIn,
                    icon: CustomImageView(
                      svgPath: ImageConstant.imgGooglepay1,
                      height: getSize(24),
                      width: getSize(24),
                    ),
                    label: Text(
                      'Continue with Google',
                      style: theme.textTheme.bodyLarge,
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: getPadding(all: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                  
                  SizedBox(height: getVerticalSize(16)),
                  
                  // Facebook Sign In Button
                  OutlinedButton.icon(
                    onPressed: _isLoading ? null : _handleFacebookSignIn,
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue[800],
                      size: getSize(24),
                    ),
                    label: Text(
                      'Continue with Facebook',
                      style: theme.textTheme.bodyLarge,
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: getPadding(all: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                  
                  SizedBox(height: getVerticalSize(40)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
