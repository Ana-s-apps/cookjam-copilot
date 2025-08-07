# Expo Setup Guide for CookJam Copilot

## 🚀 Quick Start with Expo

### Prerequisites:
- Node.js (v16 or higher)
- Android Studio with Android SDK
- Expo CLI (installed globally)
- Android device or emulator

### Installation Steps:

1. **Install Expo CLI (if not already installed):**
   ```bash
   npm install -g @expo/cli
   ```

2. **Install Project Dependencies:**
   ```bash
   npm install
   ```

3. **Start the Development Server:**
   ```bash
   npx expo start
   ```

4. **Run on Android:**
   ```bash
   # Option 1: From Expo CLI menu (press 'a')
   npx expo start
   # Then press 'a' for Android
   
   # Option 2: Direct command
   npx expo run:android
   ```

### 📱 Development Workflow:

#### Using Expo Go App (Easiest):
1. Install Expo Go from Google Play Store
2. Run `npx expo start`
3. Scan QR code with Expo Go app
4. App will load on your device

#### Using Development Build (Recommended for production):
1. Run `npx expo run:android` (builds development client)
2. App installs on device/emulator
3. Future updates load instantly via Expo

### 🛠️ Android Studio Integration:

1. **Open Android Studio**
2. **Configure SDK:**
   - Install Android SDK (API 33+)
   - Install Android SDK Build-Tools
   - Install Android Emulator

3. **Set Environment Variables:**
   ```bash
   # Add to your system PATH:
   ANDROID_HOME=C:\Users\[username]\AppData\Local\Android\Sdk
   ```

4. **Create/Start Emulator:**
   - Open AVD Manager in Android Studio
   - Create new Virtual Device (Pixel 6, API 33)
   - Start the emulator

### 📦 Available Commands:

```bash
# Start development server
npx expo start

# Run on Android (builds and installs)
npx expo run:android

# Run on Android with specific variant
npx expo run:android --variant debug

# Build for production
npx expo build:android

# Clear cache
npx expo start --clear

# Install Expo modules
npx expo install [package-name]
```

### 🔧 Expo Features Enabled:

- ✅ **Expo Dev Client** - Custom development builds
- ✅ **Hot Reloading** - Instant code updates
- ✅ **Expo CLI** - Enhanced developer tools
- ✅ **Over-the-Air Updates** - Update apps without app store
- ✅ **Platform-specific Code** - Android optimizations maintained

### 🎨 Assets Configuration:

Create these assets in the `assets/` folder:
- `icon.png` (1024x1024) - App icon
- `splash.png` - Splash screen
- `adaptive-icon.png` (1024x1024) - Android adaptive icon
- `favicon.png` (48x48) - Web favicon

### 🔍 Troubleshooting:

1. **Metro bundler issues:**
   ```bash
   npx expo start --clear
   ```

2. **Android build failures:**
   ```bash
   npx expo run:android --clear
   ```

3. **Package conflicts:**
   ```bash
   rm -rf node_modules
   npm install
   npx expo install --fix
   ```

4. **Expo CLI not found:**
   ```bash
   npm install -g @expo/cli@latest
   ```

### 🚀 Next Steps:

1. Add actual app icons to `assets/` folder
2. Configure environment variables in `.env`
3. Set up Supabase credentials
4. Test authentication flow
5. Build and test on physical device

---

**Ready to cook! 🍳** Your CookJam app now runs with Expo for the best development experience.
