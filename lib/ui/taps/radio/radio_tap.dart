import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/ui/taps/radio/radio_design.dart';
import 'package:islam/utils/AppStyle.dart';
import 'package:islam/utils/Appcolors.dart';

class RadioTap extends StatefulWidget {
  const RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  String selcted="Radio";
  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               GestureDetector(
                 onTap: (){
                   selcted="Radio";
                   setState(() {

                   });
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color:selcted=="Radio"? AppColors.gold:Colors.transparent,
                   ),
                   height: h*0.04,
                   width: w*0.4,
                   child: Center(child: Text("Radio",style: selcted=="Radio"? AppStyle.bold20black:AppStyle.bold20white)),

                 ),
               ),
               GestureDetector(
                 onTap: (){
                   selcted="Reciters";
                   setState(() {

                   });
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color:selcted=="Reciters"? AppColors.gold:Colors.transparent,
                   ),
                   height: h*0.04,
                   width: w*0.4,
                   child: Center(child: Text("Reciters",style: selcted=="Reciters"? AppStyle.bold20black:AppStyle.bold20white)),

                 ),
               )
             ],
           ),
          SizedBox(height: h*0.02,),
         Expanded(
           child: Container(
            child:
            ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Radioo();
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
           ),
         ),
          SizedBox(height: h*0.0001,),
        ],
            ),
      );
  }
}
