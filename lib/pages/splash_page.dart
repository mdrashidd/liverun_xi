import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: 20),
          Text('Welcome to LiveRun XI', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30, color: Colors.white,decoration: TextDecoration.none)),
          SizedBox(height: 200),
          ElevatedButton(onPressed: () {
            print("Pressed Enter Button");
            Navigator.pushNamed(context,'/homepage');
          }, child: Text("Enter to start")),
          SizedBox(height: 100),
          ElevatedButton(onPressed: () {
            print("Pressed Signin Button");
            Navigator.pushNamed(context,'/signinpage');
          }, child: Text("Sign in")),
        ],
      ),
    );
  }
}
