import 'package:flutter/cupertino.dart';
import 'package:islam/ui/taps/quran/quran%20res.dart';
import 'package:islam/utils/AppStyle.dart';

class Suralist extends StatelessWidget {
  const Suralist({super.key, this.ind});
  final ind;

  @override
  Widget build(BuildContext context) {
    final w= MediaQuery.sizeOf(context).width;
    final h= MediaQuery.sizeOf(context).height;
    return  Container(
      child:
      Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/taps/Sura_Vector.png",height: h*.08,),
              Text("${ind+1}",style: AppStyle.bold24white.copyWith(
                fontSize: 22
              ),),
            ],
          ),
          SizedBox(width: w*.02,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${Quranresources().englishQuranList[ind]}",style: AppStyle.bold20white,),
              Text("${Quranresources().VersesList[ind]}",style: AppStyle.bold20white,)
            ],
          ),
          Spacer(),
          Text("${Quranresources().arabicQuranList[ind]}",style: AppStyle.bold20white,)
        ],
      ),
    );
  }
}
