# Quick Start Guide - Firebase Authentication

This guide will help you quickly set up and test the new Firebase authentication system.

## Prerequisites

✅ Flutter SDK 3.5.3 or higher
✅ Android Studio or Xcode
✅ Firebase account (free tier works)
✅ Google account for testing
✅ Facebook Developer account (for Facebook login)

## Step-by-Step Setup

### 1. Install Dependencies

```bash
cd /path/to/sport-project
flutter pub get
```

### 2. Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project"
3. Enter project name: "Gym App" (or your choice)
4. Disable Google Analytics (optional)
5. Click "Create project"

### 3. Register Android App

1. In Firebase project, click the Android icon
2. Enter package name: `com.gymapp.app`
3. Enter app nickname: "Gym App Android"
4. Click "Register app"
5. Download `google-services.json`
6. Replace the file at: `android/app/google-services.json`
7. Click "Next" and "Continue to console"

### 4. Get SHA-1 Certificate (Android)

**For Debug:**
```bash
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
```

Copy the SHA-1 fingerprint and add it in Firebase Console:
- Project Settings → Your Android app → SHA certificate fingerprints → Add fingerprint

### 5. Register iOS App

1. In Firebase project, click the iOS icon
2. Enter bundle ID: `com.gymapp.app`
3. Enter app nickname: "Gym App iOS"
4. Click "Register app"
5. Download `GoogleService-Info.plist`
6. Replace the file at: `ios/Runner/GoogleService-Info.plist`
7. Click "Next" and "Continue to console"

### 6. Enable Authentication Methods

#### Phone Authentication
1. Go to **Authentication** → **Sign-in method**
2. Click **Phone**
3. Click **Enable**
4. Click **Save**

#### Google Sign-In
1. Still in **Sign-in method**, click **Google**
2. Click **Enable**
3. Enter support email
4. Click **Save**

#### Facebook Login (Optional)
1. Create a Facebook App at [Facebook Developers](https://developers.facebook.com/)
2. Get your Facebook App ID and App Secret
3. In Firebase, click **Facebook** in sign-in methods
4. Click **Enable**
5. Enter App ID and App Secret
6. Copy the OAuth redirect URI
7. Add it to your Facebook App settings
8. Click **Save**

### 7. Create Firestore Database

1. Go to **Firestore Database**
2. Click **Create database**
3. Select **Start in test mode** (for development)
4. Choose a location (closest to your users)
5. Click **Enable**

### 8. Test Phone Authentication

Add test phone numbers to avoid SMS charges during development:

1. Go to **Authentication** → **Sign-in method** → **Phone**
2. Scroll to **Phone numbers for testing**
3. Add test phone numbers:
   - Phone: `+1 555-555-0001`
   - Code: `123456`
   - Phone: `+1 555-555-0002`
   - Code: `654321`
4. Click **Save**

### 9. Run the App

```bash
# For Android
flutter run

# For iOS
flutter run -d iOS

# For specific device
flutter devices  # List devices
flutter run -d <device-id>
```

### 10. Test the Login Flow

#### Test Phone Login
1. Launch the app
2. Complete onboarding screens
3. On login screen, enter: `+1 555-555-0001`
4. Click **LOGIN**
5. Enter OTP: `123456`
6. You should be redirected to home screen

#### Test Google Sign-In
1. On login screen, click **Continue with Google**
2. Select your Google account
3. You should be redirected to home screen

#### Test Facebook Login (if configured)
1. On login screen, click **Continue with Facebook**
2. Authorize the app
3. You should be redirected to home screen

## Verification

### Check Firestore
1. Go to Firestore Database in Firebase Console
2. You should see a `users` collection
3. Each authentication creates a user document

### Check Authentication
1. Go to Authentication in Firebase Console
2. Click **Users** tab
3. You should see authenticated users

## Common Issues & Solutions

### Issue: "Default FirebaseApp is not initialized"

**Solution:**
- Ensure `google-services.json` is in `android/app/`
- Ensure `GoogleService-Info.plist` is in `ios/Runner/`
- Clean and rebuild the project:
  ```bash
  flutter clean
  flutter pub get
  flutter run
  ```

### Issue: "Google Sign-In failed"

**Solution:**
- Verify SHA-1 certificate is added in Firebase Console
- Check that Google Sign-In is enabled in Firebase
- For iOS, ensure URL schemes are configured in `Info.plist`

### Issue: "PlatformException: sign_in_failed"

**Solution:**
- Make sure you're using the correct `google-services.json` file
- Verify package name matches in Firebase Console
- Try uninstalling and reinstalling the app

### Issue: Phone OTP not working

**Solution:**
- Use test phone numbers during development
- For production, ensure phone auth is enabled in Firebase Console
- Check that your project has billing enabled for SMS

### Issue: Build fails on Android

**Solution:**
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
flutter run
```

### Issue: iOS build fails

**Solution:**
```bash
cd ios
pod deintegrate
pod install
cd ..
flutter clean
flutter run
```

## Quick Testing Commands

```bash
# Check Flutter version
flutter --version

# Check for issues
flutter doctor

# Run in verbose mode for debugging
flutter run -v

# Hot reload (press 'r' in terminal while app is running)
# Hot restart (press 'R' in terminal)

# View logs
flutter logs

# Build APK for testing
flutter build apk --debug

# Build iOS for testing (Mac only)
flutter build ios --debug
```

## Development Tips

### 1. Use Test Phone Numbers
During development, always use the test phone numbers configured in Firebase Console to avoid SMS charges.

### 2. Enable Debug Logging
The app includes print statements for debugging. Check your console for:
- "Firebase initialization error: ..."
- "Error signing in with Google: ..."
- "Error verifying OTP: ..."

### 3. Test on Real Devices
Phone authentication may not work on emulators/simulators. Test on real devices for best results.

### 4. Clear App Data
If you encounter persistent issues, clear the app's data:
- Android: Settings → Apps → Gym App → Clear data
- iOS: Uninstall and reinstall the app

### 5. Hot Reload
Use Flutter's hot reload (press 'r') for quick UI changes without losing state.

## Next Steps

1. ✅ Set up Firebase project
2. ✅ Configure authentication methods
3. ✅ Test on device
4. 📝 Customize UI colors and branding
5. 📝 Add more authentication providers
6. 📝 Implement user profile screens
7. 📝 Add password reset for email auth (if added)
8. 📝 Set up production Firebase project
9. 📝 Configure Firestore security rules
10. 📝 Submit to app stores

## Useful Links

- **Firebase Console:** https://console.firebase.google.com/
- **Flutter Documentation:** https://flutter.dev/docs
- **FlutterFire:** https://firebase.flutter.dev/
- **GetX Documentation:** https://pub.dev/packages/get
- **Project README:** `README.md`
- **Firebase Setup Guide:** `FIREBASE_SETUP.md`
- **Implementation Notes:** `IMPLEMENTATION_NOTES.md`

## Getting Help

1. Check the error message in the console
2. Search the error in the issues linked above
3. Review `FIREBASE_SETUP.md` for detailed configuration
4. Check `IMPLEMENTATION_NOTES.md` for architecture details
5. Consult Firebase documentation for specific auth issues

## Production Checklist

Before deploying to production:

- [ ] Replace test Firebase project with production project
- [ ] Download production `google-services.json` and `GoogleService-Info.plist`
- [ ] Configure production SHA certificates
- [ ] Set up proper Firestore security rules
- [ ] Enable Firebase App Check
- [ ] Remove test phone numbers
- [ ] Set up monitoring and analytics
- [ ] Configure rate limiting
- [ ] Test all authentication flows
- [ ] Test error scenarios
- [ ] Perform security audit

## Support

For technical issues with this implementation:
- Review the code documentation in `lib/services/` and `lib/screens/auth/`
- Check the implementation notes in `IMPLEMENTATION_NOTES.md`
- Review Firebase setup steps in `FIREBASE_SETUP.md`

---

**Ready to start?** Run `flutter pub get` and follow steps 2-10 above! 🚀
