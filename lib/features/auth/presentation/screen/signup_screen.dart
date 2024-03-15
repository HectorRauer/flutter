import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const AuthField(hintText: 'Name'),
            const SizedBox(height: 15),
            const AuthField(hintText: 'Email'),
            const SizedBox(height: 15),
            const AuthField(hintText: 'Password'),
            const SizedBox(height: 15),
            const AuthGradientButton(),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                  text: "Already have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
