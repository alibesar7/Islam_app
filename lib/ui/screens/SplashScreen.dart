import 'dart:async'; // Correct import for Timer
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  static const routescreen = "splash_screen";

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 20), () {
      Navigator.pushReplacementNamed(context, 'intro_screen',);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Image.asset("assets/images/Splash Screen.png" ,
         fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,)
    );
  }
}
