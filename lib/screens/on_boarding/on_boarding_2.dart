import 'package:flutter/material.dart';

import 'package:foodhub/global/widgets/onboarding_image_widget.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Column(
      children:  [
        const SizedBox(
          height: 40,
        ),
        const OnBoardingImage2(
            mainImage: "lib/global/images/onboardingImages/onboarding2/onboardingtwomain.png",
            containerOne: "lib/global/images/onboardingImages/onboarding2/containerone.png",
            containerTwo: "lib/global/images/onboardingImages/onboarding2/containertwo.png",
            containerThree: "lib/global/images/onboardingImages/onboarding2/containerthree.png",
            containerFour: "lib/global/images/onboardingImages/onboarding2/containerfour.png",
            containerFive: "lib/global/images/onboardingImages/onboarding2/containerfive.png"),
        const SizedBox(
          height: 50,
        ),
        Text("Even to space     with us! Together",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1!.copyWith(
            color: Colors.black,
            fontSize: 38.47,
            height: 1.2,
          ),),
        const SizedBox(
          height: 12,
        ),
        Text("Our app can send you everywhere, even space. For only \$2.99 per month",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: Colors.black,
            fontSize: 17,
            height: 1.2,
          ),),
      ],
    );
  }
}
