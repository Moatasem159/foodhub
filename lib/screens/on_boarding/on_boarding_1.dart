

import 'package:flutter/material.dart';
import 'package:foodhub/global/widgets/onboarding_image_widget.dart';



class OnBoardingFirstScreen extends StatelessWidget {
  const OnBoardingFirstScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Column(
      children:  [
        const SizedBox(
          height: 40,
        ),
        const OnBoardingImage(
            mainImage: "lib/global/images/onboardingImages/onboarding1/onboardingonemain.png",
            containerOne: "lib/global/images/onboardingImages/onboarding1/starbucks.png",
            containerTwo: "lib/global/images/onboardingImages/onboarding1/kfc.png",
            containerThree: "lib/global/images/onboardingImages/onboarding1/burgerking.png",
            containerFour: "lib/global/images/onboardingImages/onboarding1/pizzahut.png",
            containerFive: "lib/global/images/onboardingImages/onboarding1/myjohns.png"),
        const SizedBox(
          height: 50,
        ),
        Text("Browse your menu and order directly",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1!.copyWith(
          color: Colors.black,
          fontSize: 38.47,
          height: 1.2,
        ),),
        const SizedBox(
          height: 12,
        ),
        Text("Our app can send you everywhere, even space. For only \$ 2.99 per month",
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


