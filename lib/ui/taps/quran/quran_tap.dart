import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/porvider/mostrecentporivder.dart';
import 'package:islam/ui/taps/quran/mostRecentlyidget.dart';
import 'package:islam/ui/taps/quran/quran%20res.dart';
import 'package:islam/ui/taps/quran/suraLIst.dart';
import 'package:islam/ui/taps/quran/sura_details.dart';
import 'package:islam/utils/shared_pref_utils.dart';
import 'package:provider/provider.dart';

import '../../../utils/AppStyle.dart';
import '../../../utils/Appcolors.dart';

class QuranTap extends StatefulWidget {
  final double h;
  final double w;

  QuranTap({required this.h, required this.w, super.key});

  @override
  State<QuranTap> createState() => _QuranTapState();
}

class _QuranTapState extends State<QuranTap> {
     List<int>fliterindcessura=List.generate(114, (index)=>index);

  @override
  Widget build(BuildContext context) {
      MostRecentProvider  porivder=Provider.of<MostRecentProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: ( newtext ){
              SearchSura(newtext);
            },
            cursorColor: AppColors.gold,
            style: AppStyle.bold20white,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ImageIcon(
                  AssetImage("assets/images/taps/twxtfield icon 1.png"),
                  color: AppColors.gold,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.search,
                  color: AppColors.gold,
                  size: 35,
                ),
              ),
              hintText: "  Sura Name",
              hintStyle: AppStyle.bold16white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.gold, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.gold, width: 2),
              )
            ),
          ),
          SizedBox(height: widget.h * 0.01),
          Mostrecentlwidget(),
          SizedBox(height: widget.h * 0.01),
          Text("Sura List", style: AppStyle.bold16white),
          SizedBox(height: widget.h * 0.01),
          Expanded(child: ListView.separated(
            padding: EdgeInsets.zero,
              itemBuilder: (context,index){
                return
                 GestureDetector(onTap: (){
                   porivder.addmostrecentlyindexslist(fliterindcessura[index]);
                   Navigator.of(context).pushNamed(SuraDetails.Suradetails,arguments: fliterindcessura[index]);
                 },child: Suralist(ind: fliterindcessura[index]));
              },
              separatorBuilder: (context,index)=>Divider(thickness: 2,indent:widget.w*.1,endIndent:widget.w*.15,),
              itemCount: fliterindcessura.length)),

        ],
      ),
    );
  }

  SearchSura( String newtext){
    List<int>searchlist=[];
    for (int i = 0; i < Quranresources().arabicQuranList.length; i++) {
      if (Quranresources().arabicQuranList[i].toLowerCase().contains(newtext.toLowerCase()))
      {
        searchlist.add(i);
      }
      if (Quranresources().englishQuranList[i].toLowerCase().contains(newtext.toLowerCase()))
      {
        searchlist.add(i);
      }
      fliterindcessura=searchlist;
       setState(() {

       });

    }

  }
}
