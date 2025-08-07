const { getDefaultConfig } = require('expo/metro-config');

/**
 * Metro configuration for Expo
 * https://docs.expo.dev/guides/customizing-metro
 *
 * @type {import('metro-config').MetroConfig}
 */
const config = getDefaultConfig(__dirname);

// Android optimization: prioritize .android.js files
config.resolver.platforms = ['android', 'native', 'web'];

module.exports = config;
