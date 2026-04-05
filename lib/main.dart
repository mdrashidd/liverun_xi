import 'package:flutter/material.dart';
import 'package:liverun_xi/pages/home_page.dart';
import 'package:liverun_xi/pages/splash_page.dart';
import 'package:liverun_xi/util/themes.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const SplashPage(),
      routes:{ '/splashpage': (context) => SplashPage(),
        '/homepage' : (context) => HomePage(),
      },
    );
    }
}

