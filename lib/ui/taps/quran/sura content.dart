import 'package:flutter/cupertino.dart';
import 'package:islam/utils/AppStyle.dart';
import 'package:islam/utils/Appcolors.dart';

class Suracontent extends StatelessWidget {
  const Suracontent({super.key, required this.s, required this.index});
  final String s;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(7),
       child: Container(
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: AppColors.gold
          )
      ),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("[${index+1}] $s",style: AppStyle.bold24gold,
                   textAlign:TextAlign.center ,),
         ),
    )
      ,) ;
  }
}
