import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/Models/hadth.dart';
import 'package:islam/utils/AppStyle.dart';
import 'package:islam/utils/Appcolors.dart';

class HadthDeatales extends StatefulWidget {
    HadthDeatales({super.key, required this.index});
  final int index;

  @override
  State<HadthDeatales> createState() => _HadthDeatalesState();
}

class _HadthDeatalesState extends State<HadthDeatales> {
  HadthModel? hadth;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadhadthfile(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return
      Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.gold,
      ),
      child: hadth==null ?
      Center(child: CircularProgressIndicator(
        color:AppColors.black,
      ))
          :
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:   EdgeInsets.only(left: w*0.02 ),
                    child: Image.asset("assets/images/taps/hadth/Cornerr 2.png",height: h*0.08,width: w*.13,),
                  ),
                  Text(hadth?.titel??"",style: AppStyle.bold16black ,),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0,top: 10),
                    child: Image.asset("assets/images/taps/hadth/Cornerr 1.png",height: h*0.08,width: w*.13),
                  ),


                ],
              ),
              SizedBox(height: h*0.01,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hadth?.content??"",style: AppStyle.bold16black,
                   textAlign: TextAlign.center,),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadhadthfile(int index) async {
      String filecontent =await  rootBundle.loadString("assets/files/hadth/h${index}.txt");
       String titel=filecontent.substring(0,filecontent.indexOf("\n"));
       String content=filecontent.substring(filecontent.indexOf("\n")+1);
       hadth=HadthModel(titel: titel, content: content);
       setState(() {

       });
  }
}
