import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  // Collection reference
  CollectionReference get usersCollection => _firestore.collection('users');
  
  // Create or update user document
  Future<void> createOrUpdateUser({
    required String uid,
    String? phoneNumber,
    String? email,
    String? displayName,
    String?  photoURL,
    required String provider,
  }) async {
    try {
      DocumentReference userDoc = usersCollection.doc(uid);
      DocumentSnapshot doc = await userDoc.get();
      
      if (doc.exists) {
        // Update existing user
        await userDoc.update({
          'lastLogin': FieldValue. serverTimestamp(),
          if (phoneNumber != null) 'phoneNumber': phoneNumber,
          if (email != null) 'email': email,
          if (displayName != null) 'displayName': displayName,
          if (photoURL != null) 'photoURL': photoURL,
        });
      } else {
        // Create new user - ESTABLECER onboardingCompleted: false
        await userDoc.set({
          'uid': uid,
          'phoneNumber': phoneNumber,
          'email': email,
          'displayName': displayName,
          'photoURL': photoURL,
          'provider': provider,
          'onboardingCompleted': false,  // ← Campo crítico
          'createdAt':  FieldValue.serverTimestamp(),
          'lastLogin': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      debugPrint('Error creating/updating user:  $e');
      rethrow;
    }
  }
  
  // Check if phone number is already registered
  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    try {
      QuerySnapshot querySnapshot = await usersCollection
          . where('phoneNumber', isEqualTo: phoneNumber)
          .limit(1)
          .get();
      
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      debugPrint('Error checking phone number: $e');
      return false;
    }
  }
  
  // Get user data
  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      DocumentSnapshot doc = await usersCollection.doc(uid).get();
      if (doc.exists) {
        return doc.data() as Map<String, dynamic>?;
      }
      return null;
    } catch (e) {
      debugPrint('Error getting user data: $e');
      return null;
    }
  }
  
  // Update user profile
  Future<void> updateUserProfile({
    required String uid,
    String? displayName,
    String? photoURL,
  }) async {
    try {
      await usersCollection.doc(uid).update({
        if (displayName != null) 'displayName': displayName,
        if (photoURL != null) 'photoURL': photoURL,
      });
    } catch (e) {
      debugPrint('Error updating user profile: $e');
      rethrow;
    }
  }

  // Check if onboarding is completed
  Future<bool> isOnboardingCompleted(String uid) async {
    try {
      DocumentSnapshot doc = await usersCollection.doc(uid).get();
      if (doc.exists) {
        Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;
        return data?['onboardingCompleted'] == true;
      }
      return false;
    } catch (e) {
      debugPrint('Error checking onboarding status: $e');
      return false;
    }
  }

  // Save onboarding data and mark as completed
  // Este método se llamará al FINAL del flujo de onboarding
  Future<void> saveOnboardingData({
    required String uid,
    required List<String> sports,
    required String gender,
    required Map<String, dynamic> height,
    required Map<String, dynamic> weight,
    List<String>? profilePhotos,
  }) async {
    try {
      await usersCollection.doc(uid).update({
        'sports': sports,
        'gender': gender,
        'height': height,
        'weight': weight,
        'profilePhotos': profilePhotos ??  [],
        'onboardingCompleted': true,  // ← SOLO AQUÍ se pone en true
        'profileCompletedAt': FieldValue. serverTimestamp(),
      });
      debugPrint('✅ Onboarding data saved successfully');
    } catch (e) {
      debugPrint('❌ Error saving onboarding data: $e');
      rethrow;
    }
  }
}