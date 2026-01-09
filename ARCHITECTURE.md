# Architecture Diagram - Firebase Authentication

```
┌─────────────────────────────────────────────────────────────────┐
│                         GYM APP                                 │
│                    Flutter Application                           │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │
        ┌─────────────────────┼─────────────────────┐
        │                     │                     │
        ▼                     ▼                     ▼
┌──────────────┐    ┌──────────────┐    ┌──────────────┐
│   Splash     │    │  Onboarding  │    │   Home       │
│   Screen     │───▶│   Screen     │───▶│   Screen     │
└──────────────┘    └──────────────┘    └──────────────┘
        │                     │                     ▲
        │                     │                     │
        │                     ▼                     │
        │            ┌──────────────┐               │
        │            │  New Login   │               │
        └───────────▶│   Screen     │───────────────┤
                     └──────────────┘               │
                              │                     │
                ┌─────────────┼─────────────┐      │
                │             │             │       │
                ▼             ▼             ▼       │
         ┌───────────┐ ┌───────────┐ ┌───────────┐│
         │  Phone    │ │  Google   │ │ Facebook  ││
         │   Auth    │ │  Sign-In  │ │   Login   ││
         └───────────┘ └───────────┘ └───────────┘│
                │             │             │       │
                │             │             │       │
                ▼             └──────┬──────┘       │
         ┌───────────┐               │              │
         │    OTP    │               │              │
         │Verification│              │              │
         └───────────┘               │              │
                │                    │              │
                └────────────────────┴──────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                       SERVICE LAYER                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ┌──────────────────────────┐  ┌──────────────────────────┐   │
│  │    AuthService.dart      │  │  FirestoreService.dart   │   │
│  │                          │  │                          │   │
│  │ • sendPhoneVerification  │  │ • createOrUpdateUser     │   │
│  │ • verifyOTP             │  │ • isPhoneNumberRegistered│   │
│  │ • signInWithGoogle      │  │ • getUserData            │   │
│  │ • signInWithFacebook    │  │ • updateUserProfile      │   │
│  │ • signOut               │  │                          │   │
│  │ • isPhoneNumberRegistered│  │                          │   │
│  └──────────────────────────┘  └──────────────────────────┘   │
│                │                           │                    │
└────────────────┼───────────────────────────┼────────────────────┘
                 │                           │
                 │                           │
                 ▼                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                      FIREBASE BACKEND                           │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ┌────────────────────┐          ┌────────────────────┐        │
│  │ Firebase Auth      │          │  Cloud Firestore   │        │
│  │                    │          │                    │        │
│  │ • Phone Auth       │◀────────▶│  users collection  │        │
│  │ • Google OAuth     │          │                    │        │
│  │ • Facebook OAuth   │          │  ┌──────────────┐  │        │
│  │ • User Management  │          │  │ User Doc     │  │        │
│  │ • Token Management │          │  │ {            │  │        │
│  │                    │          │  │   uid        │  │        │
│  └────────────────────┘          │  │   phone      │  │        │
│                                  │  │   email      │  │        │
│                                  │  │   provider   │  │        │
│                                  │  │   createdAt  │  │        │
│                                  │  │   lastLogin  │  │        │
│                                  │  │ }            │  │        │
│                                  │  └──────────────┘  │        │
│                                  └────────────────────┘        │
└─────────────────────────────────────────────────────────────────┘
                 ▲                           ▲
                 │                           │
                 │                           │
┌────────────────┴───────────────────────────┴───────────────────┐
│              EXTERNAL AUTH PROVIDERS                            │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐        │
│  │   SMS        │  │   Google     │  │   Facebook   │        │
│  │  Gateway     │  │   OAuth      │  │   OAuth      │        │
│  │              │  │              │  │              │        │
│  │  • Send OTP  │  │  • Auth Flow │  │  • Auth Flow │        │
│  │  • Verify    │  │  • Tokens    │  │  • Tokens    │        │
│  └──────────────┘  └──────────────┘  └──────────────┘        │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘


AUTHENTICATION FLOW DIAGRAMS
════════════════════════════════════════════════════════════════

Phone Authentication Flow:
──────────────────────────────
User → Login Screen → Enter Phone → AuthService.sendPhoneVerificationCode()
  → Firebase sends SMS → User receives OTP → OTP Screen → Enter Code
  → AuthService.verifyOTP() → Firebase validates → FirestoreService.createOrUpdateUser()
  → Navigate to Home


Google Sign-In Flow:
────────────────────
User → Login Screen → Click Google Button → AuthService.signInWithGoogle()
  → Google Sign-In Dialog → User selects account → OAuth tokens
  → Firebase Auth → FirestoreService.createOrUpdateUser()
  → Navigate to Home


Facebook Login Flow:
────────────────────
User → Login Screen → Click Facebook Button → AuthService.signInWithFacebook()
  → Facebook Login Dialog → User authorizes → OAuth token
  → Firebase Auth → FirestoreService.createOrUpdateUser()
  → Navigate to Home


DATA FLOW
═════════════════════════════════════════════════════════════════

User Authentication:
  UI Layer (Screens) 
    ↓ calls
  Service Layer (AuthService, FirestoreService)
    ↓ communicates
  Firebase Backend (Auth, Firestore)
    ↓ uses
  External Providers (Google, Facebook, SMS)


State Management:
  AuthService (GetxService)
    → Observable user state (Rx<User?>)
    → Binds to Firebase auth state changes
    → Notifies UI of authentication changes


Error Handling:
  Service Layer
    → Try-catch blocks
    → debugPrint() for logging
    → Return null/false on errors
  
  UI Layer
    → Checks return values
    → Displays snackbars
    → Shows loading states


FOLDER STRUCTURE
═════════════════════════════════════════════════════════════════

sport-project/
├── lib/
│   ├── screens/
│   │   └── auth/
│   │       ├── login_screen.dart           ← New login UI
│   │       └── otp_verification_screen.dart ← OTP verification
│   ├── services/
│   │   ├── auth_service.dart               ← Auth business logic
│   │   └── firestore_service.dart          ← Database operations
│   ├── main.dart                           ← Firebase initialization
│   └── routes/
│       └── app_routes.dart                 ← Route configuration
│
├── android/
│   ├── app/
│   │   ├── build.gradle                    ← Firebase config
│   │   └── google-services.json            ← Firebase Android config
│   └── build.gradle                        ← Google Services plugin
│
├── ios/
│   └── Runner/
│       └── GoogleService-Info.plist        ← Firebase iOS config
│
└── Documentation/
    ├── FIREBASE_SETUP.md                   ← Setup instructions
    ├── IMPLEMENTATION_NOTES.md             ← Technical details
    ├── QUICKSTART.md                       ← Quick start guide
    └── IMPLEMENTATION_SUMMARY.md           ← Overview


KEY COMPONENTS
═════════════════════════════════════════════════════════════════

LoginScreen Widget:
  • StatefulWidget with form validation
  • IntlPhoneField for international numbers
  • CustomElevatedButton for actions
  • Handles loading states
  • Shows error/success messages

OTPVerificationScreen Widget:
  • Pinput widget for 6-digit input
  • Auto-submit on completion
  • Resend functionality
  • Timer for rate limiting (can be added)

AuthService Class:
  • Extends GetxService for DI
  • Manages FirebaseAuth instance
  • Handles all auth providers
  • Observable user state
  • Error handling

FirestoreService Class:
  • Manages Firestore operations
  • CRUD operations for users
  • Query capabilities
  • Error handling


SECURITY FEATURES
═════════════════════════════════════════════════════════════════

• Firebase handles token management
• OAuth providers manage credentials
• SMS OTP verification
• Rate limiting by Firebase
• Firestore security rules (to be configured)
• No credentials stored in app
• Automatic token refresh
• Secure HTTPS communication


DEPENDENCIES TREE
═════════════════════════════════════════════════════════════════

firebase_core (3.8.1)
  └── Initializes Firebase SDK

firebase_auth (5.3.4)
  ├── Depends on: firebase_core
  └── Provides: Authentication methods

cloud_firestore (5.5.2)
  ├── Depends on: firebase_core
  └── Provides: Database operations

google_sign_in (6.2.3)
  ├── Depends on: google_sign_in_platform_interface
  └── Provides: Google OAuth

flutter_facebook_auth (7.1.5)
  ├── Depends on: flutter_facebook_auth_platform_interface
  └── Provides: Facebook OAuth

intl_phone_field (3.2.0)
  ├── Depends on: intl
  └── Provides: Phone number input widget

```
