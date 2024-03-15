import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [AppPallete.gradient1, AppPallete.gradient2]),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            fixedSize: const Size(395, 55),
            backgroundColor: Colors.transparent),
        child: const Text(
          'Sign Up',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppPallete.whiteColor),
        ),
      ),
    );
  }
}
