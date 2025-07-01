import 'package:flutter/material.dart';
import 'package:islam/porvider/mostrecentporivder.dart';
import 'package:islam/ui/screens/HomeScreen.dart';
import 'package:islam/ui/screens/SplashScreen.dart';
import 'package:islam/ui/screens/intro_screen.dart';
import 'package:islam/ui/taps/quran/sura_details.dart';
import 'package:islam/utils/apptheme.dart';
import 'package:provider/provider.dart';
main(){
  runApp(ChangeNotifierProvider(
      create: (context) =>MostRecentProvider(),
  child: Myapp()));
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});
///
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routescreen,
      routes: {
        Splashscreen.routescreen:(context)=> Splashscreen(),
        Homescreen.routescreen:(context)=>Homescreen(),
        IntroScreen.routescreen:(context)=>IntroScreen(),
        SuraDetails.Suradetails:(context)=>SuraDetails(),
      },
      theme: Apptheme.themeapp,
      themeMode: ThemeMode.dark ,

    );
  }
}
