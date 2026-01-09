import 'dart:async';
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
    String? photoURL,
    required String provider,
  }) async {
    try {
      DocumentReference userDoc = usersCollection.doc(uid);
      
      // Add timeout to prevent hanging
      DocumentSnapshot doc = await userDoc.get().timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugPrint('Timeout getting user document for uid: $uid');
          throw TimeoutException('Failed to get user document');
        },
      );
      
      if (doc.exists) {
        // Update existing user with timeout
        await userDoc.update({
          'lastLogin': FieldValue.serverTimestamp(),
          if (phoneNumber != null) 'phoneNumber': phoneNumber,
          if (email != null) 'email': email,
          if (displayName != null) 'displayName': displayName,
          if (photoURL != null) 'photoURL': photoURL,
        }).timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            debugPrint('Timeout updating user document for uid: $uid');
            throw TimeoutException('Failed to update user document');
          },
        );
        debugPrint('Successfully updated user in Firestore: $uid');
      } else {
        // Create new user with timeout
        await userDoc.set({
          'uid': uid,
          'phoneNumber': phoneNumber,
          'email': email,
          'displayName': displayName,
          'photoURL': photoURL,
          'provider': provider,
          'createdAt': FieldValue.serverTimestamp(),
          'lastLogin': FieldValue.serverTimestamp(),
        }).timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            debugPrint('Timeout creating user document for uid: $uid');
            throw TimeoutException('Failed to create user document');
          },
        );
        debugPrint('Successfully created user in Firestore: $uid');
      }
    } catch (e) {
      debugPrint('Error creating/updating user in Firestore: $e');
      rethrow;
    }
  }
  
  // Check if phone number is already registered
  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    try {
      QuerySnapshot querySnapshot = await usersCollection
          .where('phoneNumber', isEqualTo: phoneNumber)
          .limit(1)
          .get()
          .timeout(
            const Duration(seconds: 10),
            onTimeout: () {
              debugPrint('Timeout checking phone number: $phoneNumber');
              throw TimeoutException('Failed to check phone number');
            },
          );
      
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      debugPrint('Error checking phone number: $e');
      return false;
    }
  }
  
  // Get user data
  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      DocumentSnapshot doc = await usersCollection.doc(uid).get().timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugPrint('Timeout getting user data for uid: $uid');
          throw TimeoutException('Failed to get user data');
        },
      );
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
      }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugPrint('Timeout updating user profile for uid: $uid');
          throw TimeoutException('Failed to update user profile');
        },
      );
    } catch (e) {
      debugPrint('Error updating user profile: $e');
      rethrow;
    }
  }
}
