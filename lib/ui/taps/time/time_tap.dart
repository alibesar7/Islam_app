import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/ui/taps/time/timecard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islam/utils/AppStyle.dart';
import 'package:islam/utils/Appcolors.dart';
class TimeTap extends StatelessWidget {
  const TimeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Timecard(),
          SizedBox(height: 20.h,),
          Text("Azkar",style: AppStyle.bold20white,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text("Morning Azkar",style: AppStyle.bold20white,),
                      SizedBox(height: 10.h,),
                    ],
                  ),
                  width: 160.w,
                  decoration: BoxDecoration(
                      color: AppColors.blackbg,
                      image: DecorationImage(
                          image:AssetImage("assets/images/time/Morning Azkar.png")),
                      borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: AppColors.gold,
                    )
                  ),
                ),
                Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text("Evening Azkar",style: AppStyle.bold20white,),
                      SizedBox(height: 10.h,),
                    ],
                  ),
                  width: 160.w,
                  decoration: BoxDecoration(
                    color: AppColors.blackbg,
                    image: DecorationImage(
                        image:AssetImage("assets/images/time/Evening Azkar.png")),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: AppColors.gold,
                      )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
