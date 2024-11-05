import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_styles.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/images/app_logo.png',
                  width: 150, height: 150),
            ),
            Text(
              'One Platform, Complete Health Solutions',
              style: AppTextStyles.medium(context: context, color: AppColor.primaryGreen, fontSize: 15),
            ),
            const SizedBox(height: 50),
            // Get Started Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OnboardingScreen()),
                );
              },
              child: Text('Get Started', style: AppTextStyles.medium(context: context, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
