import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
          ],
        ),
      ),
    );
  }
}
