import 'package:flutter/material.dart';
import 'package:liverun_xi/util/custom_theme/textTheme.dart';

class Themes {
  Themes._();
  static ThemeData lightTheme(BuildContext context) {
    return
      ThemeData(
        useMaterial3: true,
        fontFamily: 'Popping',
        brightness: Brightness.light,
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        textTheme: AppTextTheme.lightModeTextTheme(context),
        // appBarTheme:,
        // checkboxTheme: ,
        // elevatedButtonTheme: ,
        // inputDecorationTheme: ,
      );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3 : true,
      fontFamily: 'Popping',
      brightness: Brightness.light,
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightModeTextTheme(context),
    );
  }

}
