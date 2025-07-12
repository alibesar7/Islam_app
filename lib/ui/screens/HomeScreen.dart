import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Appcolors.dart';
import '../taps/hadth/hadth_tap.dart';
import '../taps/quran/quran_tap.dart';
import '../taps/radio/radio_tap.dart';
import '../taps/sebha/sebha_tap.dart';
import '../taps/time/time_tap.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  static const routescreen="home_screen";


  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex=0;
  List<String>backgreoundImage=[
    "assets/images/backgrounds/Background.png",
    "assets/images/backgrounds/hadthBackground.png",
    "assets/images/backgrounds/sebhaBackground.png",
    "assets/images/backgrounds/radioBackground.png",
    "assets/images/backgrounds/timeBackground.png"
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    List<Widget>tapsbody=[
      QuranTap(w:w ,h: h),HadthTap(),SebhaTap(),RadioTap(),TimeTap()
    ];
    return Stack(
      children: [
        Image.asset(backgreoundImage[selectedindex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
         ),
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.white,
            unselectedItemColor: AppColors.black,
            backgroundColor: AppColors.gold,
            selectedFontSize: 20,
              showUnselectedLabels: false,
            iconSize: 30,
            showSelectedLabels: true,
              type:BottomNavigationBarType.fixed,
              currentIndex: selectedindex,
              onTap: (index){
              selectedindex=index;
              setState(() {

              });
              },
              items: [
                BottomNavigationBarItem(

                  icon: BuildItemInBottomSheet(selectedindex, 0, "assets/images/taps/quran.png"),
                  label: "Quran",
                ),
                BottomNavigationBarItem(
                  icon: BuildItemInBottomSheet(selectedindex, 1, "assets/images/taps/book-album-svgrepo-com 1.png"),
                  label: "Hadith",
                ),
                  BottomNavigationBarItem(
                    icon: BuildItemInBottomSheet(selectedindex, 2, "assets/images/taps/necklace-islam-svgrepo-com 1.png"),
                    label: " Sebha",
                  ),
                BottomNavigationBarItem(
                  icon: BuildItemInBottomSheet(selectedindex, 3, "assets/images/taps/radio-svgrepo-com 1.png"),
                  label: "Radio",
                ),
                BottomNavigationBarItem(
                  icon: BuildItemInBottomSheet(selectedindex, 4, "assets/images/taps/Sura_Vector.png"),
                  label: "Time",
                ),
              ]),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: h*.02),
                child: Image.asset("assets/images/taps/Logo_of_five_taps.png",
                width: w*0.8,
                height: h*0.2,),
              ),
              Expanded(child: tapsbody[selectedindex])
            ],
          ),
        )
      ],
    );
  }
 }

 Widget BuildItemInBottomSheet(int selectedindex,int index,String image) {
    return  selectedindex==index?
           Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(66),
                    color: AppColors.blackbg
         ),
             child:  Padding(
               padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 2),
                    child:index==5? ImageIcon(
                    AssetImage(image)
                    ): Icon(
                      ( Icons.alarm_sharp),
                    ),
                        ) ,

              ):   ImageIcon(
                   AssetImage(image),

                    );
  }

