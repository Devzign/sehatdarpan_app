import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_styles.dart';
import '../../core/utils/device_utils.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool isTabletOrDesktop = DeviceUtils.isTabletOrDesktop(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Flexible(
                  flex: 3,
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
                          padding: EdgeInsets.only(
                            bottom: screenHeight * 0.05,
                          ),
                          child: Image.asset(
                            'assets/images/boy_pencil.png',
                            width: isTabletOrDesktop
                                ? screenWidth * 0.4
                                : screenWidth * 0.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: isTabletOrDesktop ? 40 : 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Image.asset(
                            'assets/images/app_logo.png',
                            width: isTabletOrDesktop
                                ? screenWidth * 0.2
                                : screenWidth * 0.35,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'One Platform, Complete Health Solutions',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.bold(
                              context: context, fontSize: 26,color: AppColor.darkPrimaryGreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
