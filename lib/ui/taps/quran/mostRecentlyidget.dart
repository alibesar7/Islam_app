import 'package:flutter/cupertino.dart';
import 'package:islam/porvider/mostrecentporivder.dart';
import 'package:islam/ui/taps/quran/quran%20res.dart';
import 'package:islam/utils/shared_pref_utils.dart';
import 'package:provider/provider.dart';

import '../../../utils/AppStyle.dart';
import '../../../utils/Appcolors.dart';

class Mostrecentlwidget extends StatefulWidget {
    Mostrecentlwidget({super.key});

  @override
  State<Mostrecentlwidget> createState() => _MostrecentlwidgetState();
}

class _MostrecentlwidgetState extends State<Mostrecentlwidget> {
   late MostRecentProvider porivder=MostRecentProvider();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      porivder.readMostRecently();
    });
  }


  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    porivder=Provider.of<MostRecentProvider>(context);
    return Visibility(
      visible: porivder.mostRecently.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Most Recently", style: AppStyle.bold16white,),
          SizedBox(height:  h * 0.01),
          SizedBox(
            width: double.infinity,
            height: h*0.19,
            child:  ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: porivder.mostRecently.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width:  w * 0.75,
                  height:  h * 0.16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.gold,
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17,right:  5,left: 8,bottom: 8),
                        child: Column(
                          children: [
                            Text(" ${Quranresources().englishQuranList[porivder.mostRecently[index]]}",
                              style: AppStyle.bold24balck,),
                            Text(" ${Quranresources().arabicQuranList[porivder.mostRecently[index]]}",
                                style: AppStyle.bold24balck),
                            Text("${Quranresources().VersesList[porivder.mostRecently[index]]} Verses",
                                style: AppStyle.bold24balck),
                          ],

                        ),
                      ),
                      Column(children: [
                        Image.asset("assets/images/taps/recently sura.png"
                          ,width: w*.35,)
                      ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: w*.02),
            ),
          ),
        ],
      ),
    );
  }
}
