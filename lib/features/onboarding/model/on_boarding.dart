import 'package:elearning/core/constants/images.dart';
import 'package:elearning/core/constants/style.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';

final List<Introduction> list = [
  Introduction(
    title: 'اجعل التعلم متاحا في أي مكان',
    subTitle:
        'ب امكانك الان حضور جميع الدورات التي تهتم بها من منزلك ب استخدام تطبيق منصة ',
    imageUrl: Assets.resourceImagesOnBoarding1,
    titleTextStyle: onBoardingTitleStyle,
    subTitleTextStyle: onBoardingSubTitleStyle,
  ),
  Introduction(
    title: 'قم بتمكين تجربة التعلم الخاصة بك',
    subTitle:
        'توفر لك منصة جميع الدورات التي تساهم بتطوير مهاراتك ل دخول سوق العمل',
    imageUrl: Assets.resourceImagesOnBoarding2,
    titleTextStyle: onBoardingTitleStyle,
    subTitleTextStyle: onBoardingSubTitleStyle,
  ),
];
