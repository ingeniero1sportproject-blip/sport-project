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
        phoneNumber:  phoneNumber,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Auto-verification (Android only)
          try {
            UserCredential userCredential = await _auth.signInWithCredential(credential);
            if (userCredential.user != null) {
              // Fire-and-forget for auto-verification
              _firestoreService.createOrUpdateUser(
                uid: userCredential.user!.uid,
                phoneNumber: userCredential. user! . phoneNumber,
                provider: 'phone',
              ).catchError((e) {
                debugPrint('Error creating user in Firestore (auto-verify): $e');
              });
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
      onError(e. toString());
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
      
      // Create or update user in Firestore (fire-and-forget, NO await)
      if (userCredential.user != null) {
        _firestoreService.createOrUpdateUser(
          uid: userCredential.user!.uid,
          phoneNumber: userCredential.user!. phoneNumber,
          provider: 'phone',
        ).catchError((e) {
          debugPrint('Error creating user in Firestore: $e');
        });
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
      final GoogleSignInAccount? googleUser = await _googleSignIn. signIn();
      
      if (googleUser == null) {
        return null;
      }
      
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth. idToken,
      );
      
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      
      if (userCredential.user != null) {
        _firestoreService.createOrUpdateUser(
          uid: userCredential.user!.uid,
          email: userCredential.user!.email,
          displayName: userCredential.user!.displayName,
          photoURL: userCredential.user!.photoURL,
          provider: 'google',
        ).catchError((e) {
          debugPrint('Error creating user in Firestore: $e');
        });
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
      final LoginResult result = await FacebookAuth. instance.login();
      
      if (result.status != LoginStatus.success) {
        return null;
      }
      
      final OAuthCredential facebookAuthCredential = 
          FacebookAuthProvider.credential(result.accessToken! .tokenString);
      
      UserCredential userCredential = 
          await _auth.signInWithCredential(facebookAuthCredential);
      
      if (userCredential.user != null) {
        _firestoreService.createOrUpdateUser(
          uid: userCredential.user! .uid,
          email: userCredential.user!.email,
          displayName: userCredential.user! .displayName,
          photoURL: userCredential.user!. photoURL,
          provider: 'facebook',
        ).catchError((e) {
          debugPrint('Error creating user in Firestore: $e');
        });
      }
      
      return userCredential;
    } catch (e) {
      debugPrint('Error signing in with Facebook:  $e');
      return null;
    }
  }
  
  // Sign Out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await _googleSignIn.signOut();
      await FacebookAuth.instance. logOut();
    } catch (e) {
      debugPrint('Error signing out: $e');
    }
  }
  
  // Check if phone number is registered
  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    return await _firestoreService.isPhoneNumberRegistered(phoneNumber);
  }

  // Check onboarding status
  Future<bool> checkOnboardingStatus() async {
    User? user = currentUser;
    if (user == null) return false;
    return await _firestoreService.isOnboardingCompleted(user. uid);
  }
}