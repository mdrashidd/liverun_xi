import 'package:flutter/material.dart';
import 'package:liverun_xi/pages/loading_page.dart';
import 'package:liverun_xi/pages/signin_page.dart';
import 'package:liverun_xi/pages/splash_page.dart';

import '../util/themes.dart';
import 'base_page.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'LiveRun XI',
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme(context),
      darkTheme: Themes.darkTheme(context),
      home: const LoadingPage(),
      routes:{ '/splashpage': (context) => SplashPage(),
        '/homepage' : (context) => HomePage(),
        '/basepage' : (context) => BasePage(),
        '/signinpage' : (context) => SignInPage(),
      },
    );
  }
}

