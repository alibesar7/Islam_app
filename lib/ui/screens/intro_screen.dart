import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Models/onboarding_model.dart';
import '../intro_screens/onboarding_view.dart';
import 'HomeScreen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  static const String routescreen = "intro_screen";

  final List<OnboeardingModel> onboardingPages = [
    OnboeardingModel(
      fimage: "assets/images/intro/Group 32.png",
      simage: "assets/images/intro/11.png",
      title: "Welcome To Islmi App",
      subtitle: "",
    ),
    OnboeardingModel(
      fimage: "assets/images/intro/Group 32.png",
      simage: "assets/images/intro/Frame 3.png",
      title: "Welcome To Islami",
      subtitle: "We Are Very Excited To Have You In Our\nCommunity",
    ),
    OnboeardingModel(
      fimage: "assets/images/intro/Group 32.png",
      simage: "assets/images/intro/4intro.png",
      title: "Reading the Quran",
      subtitle: "Read, and your Lord is the Most Generous",
    ),
    OnboeardingModel(
      fimage: "assets/images/intro/Group 32.png",
      simage: "assets/images/intro/5intro.png",
      title: "Bearish",
      subtitle: "Praise the name of your Lord, the Most High",
    ),
    OnboeardingModel(
      fimage: "assets/images/intro/Group 32.png",
      simage: "assets/images/intro/55intro.png",
      title: "Holy Quran Radio",
      subtitle: "You can listen to the Holy Quran Radio\nthrough the application for free and easily",
    ),
  ];

  void _onIntroEnd(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(Homescreen.routescreen);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xff202020),
      pages: onboardingPages.map((page) {
        return PageViewModel(
          titleWidget: const SizedBox(),
          bodyWidget: OnboardingView(
            fimage: page.fimage,
            simage: page.simage,
            title: page.title,
            subtitle: page.subtitle,
          ),
        );
      }).toList(),
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skip: const Text("Skip", style: TextStyle(fontSize: 16, color: Color(0xffE2BE7F))),
      next: const Text("Next", style: TextStyle(fontSize: 16, color: Color(0xffE2BE7F))),
      done: const Text("Done", style:  TextStyle(fontSize: 16, color: Color(0xffE2BE7F))),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: const Size(22.0, 10.0),
        activeColor: Color(0xffE2BE7F),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
