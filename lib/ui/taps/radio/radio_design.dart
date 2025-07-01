import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/utils/AppStyle.dart';
import 'package:islam/utils/Appcolors.dart';

class Radioo extends StatefulWidget {
  const Radioo({super.key});

  @override
  State<Radioo> createState() => _RadiooState();
}

class _RadiooState extends State<Radioo> {
  bool mute=true;
  bool play=true;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(28),
      ),
      width: double.infinity,
      height: h * .16,
      child: Column(
        children: [
          SizedBox(height: h*0.001,),
          Text(
            "Ibrahim Al-Akdar",
            style: AppStyle.bold20black,
          ),SizedBox(height: h*0.0055,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,

                  child: Image.asset(
                    "assets/images/taps/Radio/Mosque-02 2.png",
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon:  Icon(play==true? Icons.play_arrow:Icons.stop,color: AppColors.black,size: 45,),
                    onPressed: () {
                      play=!play;
                      setState(() {

                      });
                    },
                  ),
                  SizedBox(width: w*.03,),
                  IconButton(
                    icon:  Icon(mute==true?Icons.volume_up:Icons.volume_off_outlined,color: AppColors.black,size: 40,),
                    onPressed: () {
                     mute=!mute;
                     setState(() {

                     });
                    },
                  ),

                ],
              )
            ]
          ),
        ],
      ),
    );
  }
}
