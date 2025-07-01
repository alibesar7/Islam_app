import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/ui/taps/hadth/hadth_deatales.dart';

class HadthTap  extends StatelessWidget {
  const HadthTap({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return CarouselSlider(

      options: CarouselOptions(
          height: h*0.66,
          enlargeCenterPage: true),
      items: List.generate(50, (index)=>index+1).map((i) {
        return Builder(
          builder: (BuildContext context) {
            return   HadthDeatales(index: i);
          },
        );
      }).toList(),
    );
  }

}
