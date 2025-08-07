# CookJam Copilot - Mobile App

A React Native mobile application for Android with TypeScript, featuring authentication via Supabase and OTP via email. Built with **Expo** for enhanced development experience.

## 🚀 Current Status

✅ **Expo Setup Complete** - Building your Android app  
✅ **Git Repository** - cookjam-copilot initialized  
✅ **UI Components** - Orange/Green theme implemented  
✅ **Authentication** - Supabase + OTP ready  
✅ **Android Optimized** - Material Design & performance  

## Features

- 🔐 **Email-based authentication** with OTP via Supabase + Resend
- 🎨 **Custom UI** with orange (#d9411e) and green (#93C572) color scheme
- 📱 **Fully rounded UI elements** and Material Design buttons
- 🔤 **Lato font family** throughout the app
- 📦 **Supabase backend** integration with real-time features
- 📧 **Email OTP** using Resend service
- ⚡ **Expo development** with hot reloading and dev tools
- 🤖 **Android optimized** with Hermes and R8 optimization

## Prerequisites

Before running this project, make sure you have:

- **Node.js** (v16 or higher)
- **Expo CLI** (`npm install -g @expo/cli`)
- **Android Studio** with Android SDK
- **Java Development Kit** (JDK)
- **Supabase account** and project
- **Resend account** for email services
- **Android device or emulator** for testing

## 🚀 Quick Start with Expo

### 1. Install Expo CLI (if not already installed)
```bash
npm install -g @expo/cli
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Start Development Server
```bash
npx expo start
```

### 4. Run on Android
```bash
# Option 1: From Expo CLI menu (press 'a')
npx expo start
# Then press 'a' for Android

# Option 2: Direct command
npx expo run:android

# Option 3: Use Expo Go app (easiest)
# Install Expo Go from Play Store, then scan QR code
```

## Setup Instructions

### 1. Clone and Install
```bash
git clone https://github.com/YOUR_USERNAME/cookjam-copilot.git
cd cookjam-copilot
npm install
```

### 2. Configure Environment Variables

Create a `.env` file with your actual credentials:

```env
SUPABASE_URL=your_actual_supabase_url
SUPABASE_ANON_KEY=your_actual_supabase_anon_key
RESEND_API_KEY=your_actual_resend_api_key
```

### 3. Update Supabase Configuration

Edit `src/lib/supabase.ts` and replace the placeholder values:

```typescript
const supabaseUrl = 'YOUR_ACTUAL_SUPABASE_URL';
const supabaseAnonKey = 'YOUR_ACTUAL_SUPABASE_ANON_KEY';
```

### 4. Supabase Setup

In your Supabase project:

1. **Authentication Settings:**
   - Go to Authentication > Settings
   - Enable email authentication
   - Configure email templates for OTP

2. **RLS Policies:**
   - Set up Row Level Security policies as needed

### 5. Android Studio Setup

1. **Install Android Studio** with Android SDK
2. **Configure environment variables:**
   ```bash
   ANDROID_HOME=C:\Users\[username]\AppData\Local\Android\Sdk
   ```
3. **Create/Start emulator** or connect physical device
4. **Run the app:**
   ```bash
   npx expo run:android
   ```

## Project Structure

```
cookjam-copilot/
├── src/
│   ├── components/          # Reusable UI Components
│   │   ├── CustomButton.tsx # Rounded buttons with ripple effects
│   │   ├── CustomInput.tsx  # Styled input fields
│   │   └── Card.tsx         # Material Design cards
│   ├── screens/            # App Screens
│   │   ├── LoginScreen.tsx # Email + OTP authentication
│   │   └── OnboardingScreen.tsx # Welcome screen after login
│   ├── styles/             # Theme and Styling
│   │   ├── theme.ts        # Colors, fonts, spacing
│   │   └── androidStyles.ts # Android-specific optimizations
│   └── lib/                # External Services
│       └── supabase.ts     # Supabase client configuration
├── assets/                 # App Assets (icons, splash screens)
├── android/               # Android native configuration
├── expo/                  # Expo configuration files
└── docs/                  # Documentation
    ├── BUILD_STATUS.md    # Current build status
    ├── DEVELOPMENT_GUIDE.md # Complete dev workflow
    ├── EXPO_SETUP.md      # Expo setup instructions
    └── GIT_SETUP.md       # Git repository guide
```

## Design System

### 🎨 Colors
- **Primary Orange**: `#d9411e` (Brand color, buttons, accents)
- **Secondary Green**: `#93C572` (Success states, secondary actions)
- **Background**: `#ffffff` (Clean white interface)
- **Text**: `#000000` (Primary text)
- **Gray shades**: `#f5f5f5`, `#666666`, `#e0e0e0`

### 🔤 Typography
- **Font Family**: Lato (Google Fonts)
- **Sizes**: 12px (small), 16px (medium), 20px (large), 24px (xlarge), 32px (xxlarge)
- **Weights**: Normal (400), Medium (500), Bold (700)

### 📱 UI Elements
- **Buttons**: Fully rounded (50px border radius) with ripple effects
- **Cards**: Medium rounded corners (12px border radius) with elevation
- **Inputs**: Medium rounded corners (12px border radius)
- **Touch targets**: Minimum 48dp (Android accessibility standard)
- **Elevation**: Material Design shadow system for Android

## 🔐 Authentication Flow

1. **Email Input** → User enters email address
2. **OTP Generation** → Supabase generates 6-digit code
3. **Email Delivery** → Resend sends OTP via email
4. **OTP Verification** → User enters code in app
5. **Session Creation** → Supabase creates authenticated session
6. **Navigation** → Redirect to onboarding screen ("Let's Cook!")

## 🛠️ Development Commands

### Primary Development:
```bash
# Start Expo development server
npx expo start
# Then press 'a' for Android or scan QR code (check saved expo images)

# Run on Android (builds dev client)
npx expo run:android

# Run with cache cleared
npx expo start --clear

# Run on web (for testing)
npx expo start --web
```

### Building:
```bash
# Build development version
eas build --platform android --profile development

# Build preview version  
eas build --platform android --profile preview

# Build production APK
eas build --platform android --profile production
```

### Debugging:
```bash
# View logs
npx expo logs

# Check dependencies
npx expo install --check

# Doctor check
npx expo-doctor
```

## 📱 Android Features

- **Material Design** - Native Android UI patterns
- **Ripple Effects** - Touch feedback on buttons
- **Elevation/Shadows** - Card depth and hierarchy
- **Edge-to-edge UI** - Modern Android interface
- **Hermes Engine** - Performance optimization enabled
- **R8 Optimization** - Smaller APK sizes
- **ProGuard** - Code shrinking and obfuscation

## ⚙️ Configuration

### Environment Variables (.env):
```env
# Supabase Configuration
SUPABASE_URL=your_supabase_project_url
SUPABASE_ANON_KEY=your_supabase_anon_key

# Resend Configuration  
RESEND_API_KEY=your_resend_api_key
```

### Expo Configuration (app.json):
- **App Name**: CookJam Copilot
- **Package**: com.cookjamapp
- **Platform**: Android-focused
- **Plugins**: Expo Dev Client, Status Bar
- **Assets**: Icons, splash screens, adaptive icons

### Security Best Practices:
1. Never commit actual API keys to version control
2. Use separate environments for development and production
3. Configure Supabase RLS (Row Level Security) policies
4. Validate all user inputs on both client and server side

## 🚀 Getting Started (Step by Step)

### For First-Time Setup:

1. **Install Prerequisites:**
   ```bash
   # Install Node.js (v16+) from nodejs.org
   # Install Android Studio from developer.android.com
   
   # Install Expo CLI
   npm install -g @expo/cli
   ```

2. **Clone and Setup:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/cookjam-copilot.git
   cd cookjam-copilot
   npm install
   ```

3. **Configure Services:**
   - Create Supabase project at supabase.com
   - Create Resend account at resend.com
   - Update `.env` file with your credentials
   - Configure authentication in Supabase dashboard

4. **Start Development:**
   ```bash
   # Start Expo development server
   npx expo start
   
   # Install Expo Go app on your phone OR
   # Press 'a' to run on Android emulator
   ```

### For Development Workflow:

1. **Make changes** in your code editor
2. **Save files** - changes appear instantly (hot reload)
3. **Test** on device/emulator
4. **Commit changes** to Git
5. **Build** when ready for testing/production

## 🐛 Troubleshooting

### Common Expo Issues:

1. **Build failures:**
   ```bash
   # Clear Expo cache
   npx expo start --clear
   
   # Reset Metro bundler
   npx expo start --reset-cache
   
   # Reinstall dependencies
   rm -rf node_modules && npm install
   npx expo install --fix
   ```

2. **Android connection issues:**
   ```bash
   # Check connected devices
   adb devices
   
   # Restart ADB server
   adb kill-server && adb start-server
   
   # Check Android SDK path
   echo $ANDROID_HOME
   ```

3. **Authentication not working:**
   - Verify Supabase URL and keys in `.env`
   - Check email templates in Supabase dashboard
   - Confirm Resend API key is valid
   - Test email delivery manually

4. **Performance issues:**
   - Ensure Hermes is enabled (default)
   - Use development build instead of Expo Go for better performance
   - Optimize images and assets
   - Enable R8 minification for production builds

### Debug Tools:

```bash
# Open React Developer Tools
npx expo start --dev-client

# View detailed logs
npx expo logs --type=device

# Check bundle size
npx expo export

# Analyze bundle
npx @expo/bundle-analyzer
```

## 🏗️ Build & Deploy

### Development Builds:
```bash
# Build development client (recommended)
npx expo run:android

# This creates a development build with debugging tools
# Future updates are delivered over-the-air
```

### Production Builds:
```bash
# Install EAS CLI
npm install -g eas-cli

# Configure EAS
eas build:configure

# Build for production
eas build --platform android --profile production

# Submit to Google Play Store
eas submit --platform android
```

## 📚 Documentation

- **[EXPO_SETUP.md](./EXPO_SETUP.md)** - Detailed Expo setup guide
- **[DEVELOPMENT_GUIDE.md](./DEVELOPMENT_GUIDE.md)** - Complete development workflow
- **[BUILD_STATUS.md](./BUILD_STATUS.md)** - Current build status and progress
- **[GIT_SETUP.md](./GIT_SETUP.md)** - Git repository setup instructions
- **[ANDROID_SETUP.md](./ANDROID_SETUP.md)** - Android development setup

## 🤝 Contributing

This project follows these guidelines:

1. **Use the existing Git repository** structure
2. **Follow established code style** (TypeScript + React Native)
3. **Test authentication flow** before committing changes
4. **Update documentation** for any new features
5. **Use feature branches** for development
6. **Write descriptive commit messages**

### Development Workflow:
```bash
# Create feature branch
git checkout -b feature/new-feature

# Make changes and commit
git add .
git commit -m "Add new feature: description"

# Push to GitHub
git push origin feature/new-feature

# Create pull request on GitHub
```

## 📋 Next Development Steps

### Phase 1: Core Setup ✅
- [x] Project initialization with Expo
- [x] Authentication system (Supabase + OTP)
- [x] UI components with Material Design
- [x] Android optimization and build configuration
- [x] Git repository setup

### Phase 2: Core Features (Next)
- [ ] Recipe browsing and search functionality
- [ ] Cooking timers and step-by-step guides
- [ ] Ingredient lists and shopping lists
- [ ] User profiles and preferences
- [ ] Offline recipe storage

### Phase 3: Advanced Features
- [ ] Meal planning calendar
- [ ] Social features (sharing recipes)
- [ ] Recipe favorites and collections
- [ ] Push notifications for cooking timers
- [ ] Voice-guided cooking instructions

### Phase 4: Polish & Launch
- [ ] App icons and branding assets
- [ ] Onboarding tutorial flow
- [ ] Error handling and edge cases
- [ ] Performance optimization
- [ ] Google Play Store submission

## 🛡️ Security & Privacy

- **Authentication**: Secure email-based OTP system
- **Data Storage**: Supabase with Row Level Security (RLS)
- **API Keys**: Environment variable configuration
- **User Privacy**: Minimal data collection, transparent policies
- **Code Security**: ProGuard obfuscation for production builds

## 📊 Tech Stack

### Frontend:
- **React Native** 0.72.17 - Cross-platform mobile framework
- **Expo SDK** ~49.0.0 - Development and build tooling
- **TypeScript** 4.8.4 - Type-safe JavaScript
- **React Navigation** 6.x - Navigation system

### Backend:
- **Supabase** - Backend-as-a-Service (auth, database, real-time)
- **Resend** - Email delivery service for OTP

### Development:
- **Expo CLI** - Development server and build tools
- **EAS Build** - Cloud build service
- **Git** - Version control
- **Android Studio** - Android development environment

### Performance:
- **Hermes** - JavaScript engine optimization
- **R8** - Android code shrinking
- **ProGuard** - Code obfuscation
- **Metro** - JavaScript bundler

## 📞 Support

For development support:

1. **Documentation**: Check the comprehensive guides in `/docs`
2. **Expo Docs**: [docs.expo.dev](https://docs.expo.dev)
3. **Supabase Docs**: [supabase.com/docs](https://supabase.com/docs)
4. **React Native**: [reactnative.dev](https://reactnative.dev)

## 📄 License

This project is private and proprietary.

---

## 🍳 Ready to Cook!

Your CookJam Copilot app is fully configured with Expo and ready for Android development. The authentication system is set up, UI components are styled with your brand colors, and the development environment is optimized for productivity.

**Start cooking with:** `npx expo start`

---

*Built with ❤️ using React Native, Expo, and Supabase*