import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

import 'package:go_router/go_router.dart';

import 'constants.dart';
import 'firebase_options.dart';

void main() async {
  runApp(FlashChat());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

final GoRouter _routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: Routes.welcome,
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.registration,
      builder: (context, state) => RegistrationScreen(),
    ),
    GoRoute(
      path: Routes.chat,
      builder: (context, state) => ChatScreen(),
    ),
  ],
);

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light().copyWith(useMaterial3: true),
      routerConfig: _routerConfig,
    );
  }
}
