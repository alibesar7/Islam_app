import 'package:flutter/material.dart';

import 'AppStyle.dart';
import 'Appcolors.dart';

class Apptheme{
 static final  themeapp =ThemeData(
   scaffoldBackgroundColor:  AppColors.transpernt,
   textTheme: TextTheme(
     headlineLarge:  AppStyle.bold16white
   ),
   appBarTheme: AppBarTheme(
     backgroundColor: AppColors.blackbg,
     centerTitle: true,
     iconTheme: IconThemeData(
       color: AppColors.gold
     )
   )
 );

}