import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../services/auth_service.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../onboarding/sport_selection_screen.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String phoneNumber;
  final String verificationId;

  const OTPVerificationScreen({
    Key? key,
    required this. phoneNumber,
    required this. verificationId,
  }) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final AuthService _authService = Get. find<AuthService>();
  final TextEditingController _otpController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  Future<void> _verifyOTP() async {
  if (_otpController. text.length != 6) {
    Get.snackbar(
      'Error',
      'Please enter a valid 6-digit code',
      backgroundColor:  Colors.red,
      colorText: Colors.white,
    );
    return;
  }

  setState(() {
    _isLoading = true;
  });

  try {
    final userCredential = await _authService. verifyOTP(
      _otpController.text,
      widget.verificationId,
    );

    if (userCredential != null) {
      // 🚀 Navega INMEDIATAMENTE a deportes (siempre)
      // La pantalla de deportes verificará si debe saltar al home
      Get.offAll(() => const SportSelectionScreen());
      
      // Mostrar mensaje después
      Future.delayed(const Duration(milliseconds: 300), () {
        Get.snackbar(
          'Success',
          'Verification successful',
          backgroundColor:  Colors.green,
          colorText: Colors.white,
        );
      });
    } else {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      
      Get.snackbar(
        'Error',
        'Invalid verification code',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  } catch (e) {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
    
    Get.snackbar(
      'Error',
      'Verification failed: $e',
      backgroundColor: Colors.red,
      colorText: Colors. white,
    );
  }
}

  Future<void> _resendOTP() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await _authService.sendPhoneVerificationCode(
        widget.phoneNumber,
        onCodeSent: (verificationId) {
          setState(() {
            _isLoading = false;
          });
          
          Get.snackbar(
            'Success',
            'Verification code sent',
            backgroundColor:  Colors.green,
            colorText: Colors.white,
          );
          
          // Navigate to new OTP screen with new verification ID
          Get.off(() => OTPVerificationScreen(
            phoneNumber: widget.phoneNumber,
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
            backgroundColor:  Colors.red,
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
        'Failed to resend code: $e',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black,  // ← Color del texto
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: theme.colorScheme. primary),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Colors.grey[100],
      ),
    );

    return Scaffold(
      backgroundColor: theme. colorScheme.onErrorContainer,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onErrorContainer,
        elevation: 0,
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:  Padding(
            padding: getPadding(all: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: getVerticalSize(40)),
                
                // Title
                Text(
                  'Verification Code',
                  style:  theme.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                SizedBox(height: getVerticalSize(16)),
                
                Text(
                  'We sent a verification code to',
                  style: theme.textTheme. bodyLarge?.copyWith(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                SizedBox(height: getVerticalSize(8)),
                
                Text(
                  widget.phoneNumber,
                  style: theme. textTheme.bodyLarge?. copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign:  TextAlign.center,
                ),
                
                SizedBox(height: getVerticalSize(40)),
                
                // OTP Input
                Pinput(
                  controller: _otpController,
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  showCursor: true,
                  onCompleted: (pin) => _verifyOTP(),
                ),
                
                SizedBox(height: getVerticalSize(40)),
                
                // Verify button
                CustomElevatedButton(
                  height: getVerticalSize(54),
                  text: _isLoading ? 'VERIFYING.. .' : 'VERIFY',
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.bodyLargeUniformProExtraCondensedOnErrorContainer,
                  onTap:  _isLoading ? null : _verifyOTP,
                ),
                
                SizedBox(height: getVerticalSize(24)),
                
                // Resend code
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive the code? ",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: _isLoading ? null : _resendOTP,
                      child:  Text(
                        'Resend',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme. primary,
                          fontWeight:  FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: getVerticalSize(40)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}