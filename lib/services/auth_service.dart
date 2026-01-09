import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'firestore_service.dart';

class AuthService extends GetxService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirestoreService _firestoreService = FirestoreService();
  
  // Observable user
  Rx<User?> user = Rx<User?>(null);
  
  // Verification ID for phone authentication
  String? _verificationId;
  
  @override
  void onInit() {
    super.onInit();
    user.bindStream(_auth.authStateChanges());
  }
  
  // Get current user
  User? get currentUser => _auth.currentUser;
  
  // Phone Authentication - Send OTP
  Future<bool> sendPhoneVerificationCode(
    String phoneNumber, {
    required Function(String verificationId) onCodeSent,
    required Function(String error) onError,
  }) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-verification (Android only)
          try {
            UserCredential userCredential = await _auth.signInWithCredential(credential);
            debugPrint('Phone auto-verification successful for user: ${userCredential.user?.uid}');
            
            if (userCredential.user != null) {
              try {
                await _firestoreService.createOrUpdateUser(
                  uid: userCredential.user!.uid,
                  phoneNumber: userCredential.user!.phoneNumber,
                  provider: 'phone',
                );
              } catch (e) {
                // Log the error but don't fail the sign-in
                debugPrint('Warning: Failed to save user to Firestore after phone auto-verification: $e');
              }
            }
          } catch (e) {
            debugPrint('Error in auto-verification: $e');
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          onError(e.message ?? 'Verification failed');
        },
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          onCodeSent(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
      );
      return true;
    } catch (e) {
      onError(e.toString());
      return false;
    }
  }
  
  // Verify OTP and Sign In/Sign Up
  Future<UserCredential?> verifyOTP(String otp, String verificationId) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      
      debugPrint('Phone OTP verification successful for user: ${userCredential.user?.uid}');
      
      // Create or update user in Firestore (don't block on this)
      if (userCredential.user != null) {
        try {
          await _firestoreService.createOrUpdateUser(
            uid: userCredential.user!.uid,
            phoneNumber: userCredential.user!.phoneNumber,
            provider: 'phone',
          );
        } catch (e) {
          // Log the error but don't fail the sign-in
          debugPrint('Warning: Failed to save user to Firestore after phone OTP verification, but sign-in succeeded: $e');
        }
      }
      
      return userCredential;
    } catch (e) {
      debugPrint('Error verifying OTP: $e');
      return null;
    }
  }
  
  // Google Sign In
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      
      if (googleUser == null) {
        // User cancelled the sign-in
        return null;
      }
      
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      
      // Sign in to Firebase with the Google credential
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      
      debugPrint('Google Sign-In successful for user: ${userCredential.user?.uid}');
      
      // Create or update user in Firestore (don't block on this)
      if (userCredential.user != null) {
        try {
          await _firestoreService.createOrUpdateUser(
            uid: userCredential.user!.uid,
            email: userCredential.user!.email,
            displayName: userCredential.user!.displayName,
            photoURL: userCredential.user!.photoURL,
            provider: 'google',
          );
        } catch (e) {
          // Log the error but don't fail the sign-in
          debugPrint('Warning: Failed to save user to Firestore after Google sign-in, but sign-in succeeded: $e');
        }
      }
      
      return userCredential;
    } catch (e) {
      debugPrint('Error signing in with Google: $e');
      return null;
    }
  }
  
  // Facebook Sign In
  Future<UserCredential?> signInWithFacebook() async {
    try {
      // Trigger the Facebook authentication flow
      final LoginResult result = await FacebookAuth.instance.login();
      
      if (result.status != LoginStatus.success) {
        // User cancelled or error occurred
        return null;
      }
      
      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential = 
          FacebookAuthProvider.credential(result.accessToken!.tokenString);
      
      // Sign in to Firebase with the Facebook credential
      UserCredential userCredential = 
          await _auth.signInWithCredential(facebookAuthCredential);
      
      debugPrint('Facebook Sign-In successful for user: ${userCredential.user?.uid}');
      
      // Create or update user in Firestore (don't block on this)
      if (userCredential.user != null) {
        try {
          await _firestoreService.createOrUpdateUser(
            uid: userCredential.user!.uid,
            email: userCredential.user!.email,
            displayName: userCredential.user!.displayName,
            photoURL: userCredential.user!.photoURL,
            provider: 'facebook',
          );
        } catch (e) {
          // Log the error but don't fail the sign-in
          debugPrint('Warning: Failed to save user to Firestore after Facebook sign-in, but sign-in succeeded: $e');
        }
      }
      
      return userCredential;
    } catch (e) {
      debugPrint('Error signing in with Facebook: $e');
      return null;
    }
  }
  
  // Sign Out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await _googleSignIn.signOut();
      await FacebookAuth.instance.logOut();
    } catch (e) {
      debugPrint('Error signing out: $e');
    }
  }
  
  // Check if phone number is registered
  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    return await _firestoreService.isPhoneNumberRegistered(phoneNumber);
  }
}
