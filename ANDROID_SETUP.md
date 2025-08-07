# Android Development Commands

## Quick Start for Android Development

# Install dependencies
npm install

# Start Metro bundler
npm start

# Run on Android device/emulator
npm run android

# Build release APK
cd android && ./gradlew assembleRelease

## Android-specific optimizations enabled:
- Hermes engine for better performance
- R8 full mode for smaller APKs  
- Proguard for code shrinking
- Android-only architecture builds (armeabi-v7a, arm64-v8a)
- Material Design touch feedback
- Platform-specific styling

## Development Tips:
- Use Android Studio for better debugging
- Enable Developer Options on your device
- Use 'adb devices' to check connected devices
- Clear Metro cache if needed: npx react-native start --reset-cache
