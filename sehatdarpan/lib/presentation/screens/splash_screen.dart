import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_styles.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColor.primaryGreen,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.05,
                        ),
                        child: Image.asset(
                          'assets/images/boy_pencil.png',
                          width: screenWidth * 0.75,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/app_logo.png',
                      width: screenWidth * 0.5,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'We care for your',
                      style: AppTextStyles.medium(
                        context: context,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'CHILD',
                      style: AppTextStyles.bold(
                        context: context,
                        fontSize: 32,
                        color: AppColor.primaryGreen,
                      ),
                    ),
                    Text(
                      'We care for',
                      style: AppTextStyles.medium(
                        context: context,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'STUDENTS',
                      style: AppTextStyles.bold(
                        context: context,
                        fontSize: 28,
                        color: AppColor.primaryGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
