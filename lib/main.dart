import 'package:flutter/material.dart';
import 'package:foodhub/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.deepOrange,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "sofiapro",
            fontSize: 50,
            fontWeight: FontWeight.w700,
          ),
          subtitle1: TextStyle(
            fontFamily: "sofiapro",
          )
        ),
      ),
      home: const SplashScreen(),
    );
  }
}


