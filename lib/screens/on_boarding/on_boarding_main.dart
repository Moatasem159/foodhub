import 'package:flutter/material.dart';
import 'package:foodhub/screens/on_boarding/on_boarding_1.dart';
import 'package:foodhub/screens/on_boarding/on_boarding_2.dart';
import 'package:foodhub/screens/on_boarding/on_boarding_3.dart';
import 'package:foodhub/screens/signing/sign_up_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingMain extends StatefulWidget {
   const OnBoardingMain({Key? key}) : super(key: key);

  @override
  State<OnBoardingMain> createState() => _OnBoardingMainState();
}

class _OnBoardingMainState extends State<OnBoardingMain> {

  bool isLast=false;

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
                      physics: const BouncingScrollPhysics(),
                      controller: controller,
                      onPageChanged:(int index){
                        if(index==2)
                          {
                            setState(() {
                              isLast=true;
                            });

                    }
                        else{
                          setState(() {
                            isLast=false;
                          });
                        }
                      } ,

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
                    if(isLast)
                      {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignUpScreen(),), (route) => false);

                      }
                    else{
                      controller.nextPage(duration: const Duration(milliseconds: 900), curve:Curves.fastLinearToSlowEaseIn);
                    }

              },
                  backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(Icons.arrow_forward)),
              const SizedBox(
                height: 20,
              )
            ],
          ),


    ));
  }
}
