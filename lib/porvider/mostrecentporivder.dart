import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/shared_pref_utils.dart';

class MostRecentProvider extends ChangeNotifier{
  List<int>mostRecently=[];
 void readMostRecently()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> mostRecentlyIndexString=prefs.getStringList(SharedPrefrancekeys.mostrecently)??[];
    mostRecently = mostRecentlyIndexString.map((toElement) => int.parse(toElement)).toList();
    notifyListeners();
  }

  void addmostrecentlyindexslist(int newsura)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>mostrecentlyindexlist=prefs.getStringList(SharedPrefrancekeys.mostrecently)??[];
    if(mostrecentlyindexlist.contains("$newsura")){
      mostrecentlyindexlist.remove("$newsura");
      mostrecentlyindexlist.insert(0,"$newsura");
    }else{
      mostrecentlyindexlist.insert(0,"$newsura");
    }
    if(mostrecentlyindexlist.length>5){
      mostrecentlyindexlist=mostrecentlyindexlist.sublist(0,5);
    }
    await prefs.setStringList(SharedPrefrancekeys.mostrecently, mostrecentlyindexlist);
  }


}