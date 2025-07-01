import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.fimage,
    required this.simage,
    required this.title,
    required this.subtitle,
  });

  final String fimage;
  final String simage;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;

    return Container(
      color: const Color(0xff202020), // Keep background color
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: h * 0.01),
          Center(child: Image.asset(fimage, width: w * 0.7)),
          SizedBox(height: h * 0.01),
          Center(child: Image.asset(simage, width: w * 0.8)),
          SizedBox(height: h * 0.01),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xffE2BE7F),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: h * 0.03),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xffE2BE7F),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
