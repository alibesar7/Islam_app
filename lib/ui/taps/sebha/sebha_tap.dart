import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islam/utils/AppStyle.dart';

class SebhaTap extends StatefulWidget {
   SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
   int counter=0;
   double angel =0;
   List<String> azkarList = [
     'سبحان الله',
     'الحمد لله',
     'لا إله إلا الله',
     'الله أكبر',
   ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 20.h,),
        Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى",style: AppStyle.bold36gold,),
        SizedBox(height: 10.h,),
        Expanded(
          child: Container(
            child: GestureDetector(
              onTap: (){
                 counter++;
                 angel -= 0.1;
                 setState(() {

                 });
              },
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/images/taps/sebha/Group 37.png",
                      width: 150,
                      height: 150,),
                  ),  Padding(
                      padding: const EdgeInsets.only(top: 110),
                      child: Transform.rotate(
                        angle: angel,
                        child: Image.asset("assets/images/taps/sebha/SebhaBody 1.png",
                          width: double.infinity,
                          height: 280.h,),
                      ),
                    ),

                  Align(
                    alignment: Alignment.center,
                      child: Text("${azkarList[(counter ~/ 33) % azkarList.length]}",style: AppStyle.bold30white,)
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.h),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text("${counter%33}",style: AppStyle.bold30white,)
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
