import 'package:flutter/material.dart';
import 'package:foodhub/screens/on_boarding/on_boarding_1.dart';
import 'package:foodhub/screens/on_boarding/on_boarding_2.dart';
import 'package:foodhub/screens/on_boarding/on_boarding_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingMain extends StatelessWidget {
   const OnBoardingMain({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    PageController controller =PageController();
    return  SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 600,
                    child: PageView(
                      controller: controller,

                      children: const [
                        OnBoardingFirstScreen(),
                        OnBoardingSecondScreen(),
                        OnBoardingThirdScreen(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 400,
                    child: SmoothPageIndicator(
                      controller: controller, count: 3,
                      effect:  ExpandingDotsEffect(
                          dotColor: const Color(0xffffc529).withOpacity(.4),
                          dotHeight: 5,
                          dotWidth: 5,
                          expansionFactor: 4,
                          spacing: 5,
                          activeDotColor: const Color(0xffffc529)

                      ),
                    ),
                  ),
                ],
              ),
              FloatingActionButton(
                  onPressed: (){
                controller.nextPage(duration: const Duration(milliseconds: 900), curve:Curves.fastLinearToSlowEaseIn);
              },
              child: const Icon(Icons.arrow_forward)),
              const SizedBox(
                height: 20,
              )
            ],
          ),


    ));
  }
}
