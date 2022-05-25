import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodhub/global/Icons/icons.dart';
import 'package:foodhub/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const WelcomeScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFE724C),
        body:  Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children:  const [
                Icon(MyIcons.fulllogo,size: 150, color: Colors.white,),
              ]),
        ),

      ),
    );
  }
}
