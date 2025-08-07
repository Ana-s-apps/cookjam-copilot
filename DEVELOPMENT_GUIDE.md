# 🚀 CookJam Copilot - Development Guide

## 📱 Current Project Status:

✅ **Expo Setup Complete** - Building your Android app  
✅ **Git Repository** - cookjam-copilot initialized  
✅ **UI Components** - Orange/Green theme implemented  
✅ **Authentication** - Supabase + OTP ready  
✅ **Android Optimized** - Material Design & performance  

## 🛠️ Development Commands:

### Primary Development:
```bash
# Start Expo development server
npx expo start

# Run on Android (builds dev client)
npx expo run:android

# Clear cache and restart
npx expo start --clear
```

### Building:
```bash
# Build development version
eas build --platform android --profile development

# Build preview version  
eas build --platform android --profile preview

# Build production version
eas build --platform android --profile production
```

### Debugging:
```bash
# View logs
npx expo logs

# Open React Native debugger
npx expo start --dev-client

# Check dependencies
npx expo install --check
```

## 📁 Project Structure:

```
cookjam-copilot/
├── src/
│   ├── components/          # UI Components
│   │   ├── CustomButton.tsx # Rounded buttons
│   │   ├── CustomInput.tsx  # Input fields
│   │   └── Card.tsx         # Material cards
│   ├── screens/            # App Screens
│   │   ├── LoginScreen.tsx # Auth with OTP
│   │   └── OnboardingScreen.tsx
│   ├── styles/             # Theming
│   │   ├── theme.ts        # Colors & fonts
│   │   └── androidStyles.ts # Platform styles
│   └── lib/
│       └── supabase.ts     # Backend config
├── assets/                 # App assets
├── android/               # Android config
└── expo/                  # Expo configuration
```

## 🎨 Design System:

### Colors:
- **Primary**: `#d9411e` (Orange)
- **Secondary**: `#93C572` (Green)  
- **Background**: `#ffffff` (White)
- **Text**: `#000000` (Black)

### Typography:
- **Font**: Lato family
- **Sizes**: 12px, 16px, 20px, 24px, 32px
- **Weights**: Normal (400), Medium (500), Bold (700)

### Components:
- **Buttons**: Fully rounded (50px radius)
- **Cards**: Medium rounded (12px radius)
- **Inputs**: Medium rounded (12px radius)
- **Touch targets**: Minimum 48dp (Android standard)

## 🔐 Authentication Flow:

1. **Email Input** → User enters email
2. **OTP Sent** → Via Supabase + Resend
3. **OTP Verification** → User enters 6-digit code
4. **Session Created** → Supabase handles session
5. **Navigation** → To onboarding screen

## 📱 Android Features:

- **Material Design** - Native Android UI patterns
- **Ripple Effects** - Touch feedback
- **Elevation/Shadows** - Card depth
- **Edge-to-edge** - Modern Android UI
- **Hermes Engine** - Performance optimization
- **R8 Optimization** - Smaller APK sizes

## 🚀 Next Development Steps:

### 1. Complete Setup:
- [ ] Add actual app icons to `assets/`
- [ ] Configure Supabase credentials in `.env`
- [ ] Test authentication flow
- [ ] Set up Resend API key

### 2. Core Features:
- [ ] Add recipe browsing screens
- [ ] Implement cooking timer
- [ ] Add ingredient lists
- [ ] Create meal planning
- [ ] Add user profiles

### 3. Enhancement:
- [ ] Add offline support
- [ ] Implement push notifications
- [ ] Add social sharing
- [ ] Create recipe favorites
- [ ] Add search functionality

## 🔧 Configuration Files:

### Environment (.env):
```env
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_key
RESEND_API_KEY=your_resend_key
```

### Supabase (src/lib/supabase.ts):
- Update URL and anon key
- Configure auth settings
- Set up RLS policies

## 📊 Performance Tips:

1. **Use Expo dev client** for best development experience
2. **Enable Hermes** for faster startup (already enabled)
3. **Optimize images** before adding to assets
4. **Use React.memo** for expensive components
5. **Lazy load** non-critical screens

## 🐛 Common Issues & Solutions:

### Build Issues:
```bash
# Clear Expo cache
npx expo start --clear

# Reset Metro cache  
npx expo start --reset-cache

# Reinstall dependencies
rm -rf node_modules && npm install
```

### Android Issues:
```bash
# Check connected devices
adb devices

# Restart ADB
adb kill-server && adb start-server

# Clear Android build
cd android && ./gradlew clean
```

---

**🍳 Happy Cooking with CookJam!** Your app is building and will be ready soon for development and testing.
