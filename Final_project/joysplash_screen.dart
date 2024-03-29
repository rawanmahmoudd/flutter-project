import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Final_project/joysignup_screen.dart';
import 'package:untitled/Final_project/joystart.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splashIconSize: 800,
        backgroundColor:Color(0xFFF8F8F8),
        splash:Container(
          margin: EdgeInsets.only(top:200),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/lo.jpeg",
              fit:BoxFit.fill,
              ),
            ],
          ),
        ),
        nextScreen: StartScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
      ),
    );
  }
}
