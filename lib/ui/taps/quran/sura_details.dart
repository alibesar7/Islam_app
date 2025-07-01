import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/porvider/mostrecentporivder.dart';
import 'package:islam/ui/taps/quran/quran%20res.dart';
import 'package:islam/ui/taps/quran/sura%20content.dart';
import 'package:islam/utils/AppStyle.dart';
import 'package:islam/utils/Appcolors.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
    SuraDetails({super.key});
  static const String Suradetails = "suradetails";
  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
   late MostRecentProvider porvider=MostRecentProvider();
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
      porvider=Provider.of<MostRecentProvider>(context);
    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;
    final int ind = ModalRoute.of(context)?.settings.arguments as int;

     if (verses.isEmpty) {
       loadSurafile(ind);
     }
    return Scaffold(
      backgroundColor: AppColors.blackbg,
      appBar: AppBar(
        title: Text(
          "${Quranresources().englishQuranList[ind]}",
          style: AppStyle.bold24gold,
        ),
      ),
      body: Container(
        color: AppColors.blackbg,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/taps/sural model/Mask group.png",
                  height: h * 0.14,
                  width: h * 0.14, // match width and height for uniformity
                  fit: BoxFit.contain,
                ),
                Text("${Quranresources().arabicQuranList[ind]}", style: AppStyle.bold24gold),
                Image.asset(
                  "assets/images/taps/sural model/Mask rigt group.png",
                  height: h * 0.14,
                  width: h * 0.14, // ensure same size
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Expanded(child: verses.isEmpty?
            Center(child: CircularProgressIndicator(
              color: AppColors.gold,
            ))
                : ListView.builder(itemBuilder: (context,index){
              return  Suracontent(s: verses[index], index: index);
            },itemCount: verses.length,)),
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/taps/sural model/Mask bottom  group.png")
              ,height: 120,width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    porvider.readMostRecently();
  }
  void loadSurafile(index) async{
    String filecontent=await rootBundle.loadString("assets/files/files_quran/${index+1}.txt");
    List<String>suralines=filecontent.split("\n");
    verses=suralines;

    setState(() {

    });
  }
}
