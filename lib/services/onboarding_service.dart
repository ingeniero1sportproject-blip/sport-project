import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class OnboardingService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // Save onboarding data
  Future<void> saveOnboardingData({
    required String uid,
    required List<String> sports,
    required String gender,
    required Map<String, dynamic> height,
    required Map<String, dynamic> weight,
    List<String>? photoUrls,
  }) async {
    try {
      await _firestore.collection('users').doc(uid).set({
        'onboardingCompleted': true,
        'sports': sports,
        'gender': gender,
        'height': height,
        'weight': weight,
        'profilePhotos': photoUrls ?? [],
        'profileCompletedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } catch (e) {
      debugPrint('Error saving onboarding data: $e');
      rethrow;
    }
  }

  // Upload photos to Firebase Storage
  Future<List<String>> uploadPhotos({
    required String uid,
    required List<File> photos,
  }) async {
    List<String> photoUrls = [];

    try {
      for (int i = 0; i < photos.length; i++) {
        String fileName = 'profile_${DateTime.now().millisecondsSinceEpoch}_$i.jpg';
        Reference ref = _storage.ref().child('users/$uid/photos/$fileName');
        
        UploadTask uploadTask = ref.putFile(photos[i]);
        TaskSnapshot snapshot = await uploadTask;
        
        String downloadUrl = await snapshot.ref.getDownloadURL();
        photoUrls.add(downloadUrl);
      }
      
      return photoUrls;
    } catch (e) {
      debugPrint('Error uploading photos: $e');
      rethrow;
    }
  }

  // Delete photo from Firebase Storage
  Future<void> deletePhoto(String photoUrl) async {
    try {
      Reference ref = _storage.refFromURL(photoUrl);
      await ref.delete();
    } catch (e) {
      debugPrint('Error deleting photo: $e');
      // Don't rethrow - photo deletion is not critical
    }
  }
}
