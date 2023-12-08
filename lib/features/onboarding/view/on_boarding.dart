import 'package:elearning/features/tabs/view/tabs_page.dart';
import 'package:elearning/features/onboarding/model/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      skipTextStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      onTapSkipButton: () {
        Get.offAll(() => const TabsPage());
      },
    );
  }
}
