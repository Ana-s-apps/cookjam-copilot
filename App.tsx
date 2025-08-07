import 'react-native-url-polyfill/auto';
import React, {useEffect, useState} from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createStackNavigator} from '@react-navigation/stack';
import {StatusBar} from 'expo-status-bar';
import AsyncStorage from '@react-native-async-storage/async-storage';
import {supabase} from './src/lib/supabase';
import {Session} from '@supabase/supabase-js';

import LoginScreen from './src/screens/LoginScreen';
import OnboardingScreen from './src/screens/OnboardingScreen';

const Stack = createStackNavigator();

export default function App(): JSX.Element {
  const [session, setSession] = useState<Session | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    supabase.auth.getSession().then(({data: {session}}) => {
      setSession(session);
      setLoading(false);
    });

    supabase.auth.onAuthStateChange((_event, session) => {
      setSession(session);
    });
  }, []);

  if (loading) {
    return <></>;
  }

  return (
    <NavigationContainer>
      <StatusBar style="dark" backgroundColor="#ffffff" />
      <Stack.Navigator
        screenOptions={{
          headerShown: false,
        }}>
        {session ? (
          <Stack.Screen name="Onboarding" component={OnboardingScreen} />
        ) : (
          <Stack.Screen name="Login" component={LoginScreen} />
        )}
      </Stack.Navigator>
    </NavigationContainer>
  );
}
