import 'package:blog_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/screen/signup_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const SignUpScreen(),
    );
  }
}
