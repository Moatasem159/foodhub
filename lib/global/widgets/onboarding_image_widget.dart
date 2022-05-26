
import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {

  final String mainImage;
  final String containerOne;
  final String containerTwo;
  final String containerThree;
  final String containerFour;
  final String containerFive;

  const OnBoardingImage({
    Key? key,
    required this.mainImage,
    required this.containerOne,
    required this.containerTwo,
    required this.containerThree,
    required this.containerFour,
    required this.containerFive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 350,
      child: Stack(
        alignment: Alignment.center,
        children:  [
          const Image(image: AssetImage("lib/global/images/onboardingImages/onboarding1/Ellipse 90.png")),
          Positioned(
              top: 0,
              child: Image(
                image: AssetImage(
                    mainImage),
              )),
          Positioned(
            top: 15,
            left: 225,
            child: Image(
              image: AssetImage(containerOne),
            ),
          ),
          Positioned(
            top:270,
            left: 40,
            child: Image(
              image: AssetImage(containerTwo),
            ),
          ),
          Positioned(
            top:200,
            left: 251,
            child: Image(
              image: AssetImage(containerThree),
            ),
          ),
          Positioned(
            top:120,
            left: 43,
            child: Image(
              image: AssetImage(containerFour),
            ),
          ),
          Positioned(
            top:285,
            left: 160,
            child: Image(
              image: AssetImage(containerFive),
            ),
          ),
        ],
      ),
    );
  }

}





class OnBoardingImage2 extends StatelessWidget {

  final String mainImage;
  final String containerOne;
  final String containerTwo;
  final String containerThree;
  final String containerFour;
  final String containerFive;

  const OnBoardingImage2({
    Key? key,
    required this.mainImage,
    required this.containerOne,
    required this.containerTwo,
    required this.containerThree,
    required this.containerFour,
    required this.containerFive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 350,
      child: Stack(
        alignment: Alignment.center,
        children:  [
          const Image(image: AssetImage("lib/global/images/onboardingImages/onboarding1/Ellipse 90.png")),
          Positioned(
            left: 30,
              top: 40,
              child: Image(
                width: 320,
                image: AssetImage(
                    mainImage,
                ),
              )),
          Positioned(
            top: 15,
            left: 225,
            child: Image(
              image: AssetImage(containerOne),
            ),
          ),
          Positioned(
            top:260,
            left: 43,
            child: Image(
              image: AssetImage(containerTwo),
            ),
          ),
          Positioned(
            top:200,
            left: 251,
            child: Image(
              image: AssetImage(containerThree),
            ),
          ),
          Positioned(
            top:120,
            left: 50,
            child: Image(
              image: AssetImage(containerFour),
            ),
          ),
          Positioned(
            top:275,
            left: 160,
            child: Image(
              image: AssetImage(containerFive),
            ),
          ),
        ],
      ),
    );
  }

}





class OnBoardingImage3 extends StatelessWidget {

  final String mainImage;
  final String containerOne;
  final String containerTwo;
  final String containerThree;
  final String containerFour;
  final String containerFive;

  const OnBoardingImage3({
    Key? key,
    required this.mainImage,
    required this.containerOne,
    required this.containerTwo,
    required this.containerThree,
    required this.containerFour,
    required this.containerFive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 350,
      child: Stack(
        alignment: Alignment.center,
        children:  [
          const Image(image: AssetImage("lib/global/images/onboardingImages/onboarding1/Ellipse 90.png")),
          Positioned(
              top: 0,
              child: Image(
                image: AssetImage(
                    mainImage),
              )),
          Positioned(
            top: 15,
            left: 225,
            child: Image(
              image: AssetImage(containerOne),
            ),
          ),
          Positioned(
            top:270,
            left: 45,
            child: Image(
              image: AssetImage(containerTwo),
            ),
          ),
          Positioned(
            top:200,
            left: 265,
            child: Image(
              image: AssetImage(containerThree),
            ),
          ),
          Positioned(
            top:120,
            left: 50,
            child: Image(
              image: AssetImage(containerFour),
            ),
          ),
          Positioned(
            top:285,
            left: 160,
            child: Image(
              image: AssetImage(containerFive),
            ),
          ),
        ],
      ),
    );
  }

}