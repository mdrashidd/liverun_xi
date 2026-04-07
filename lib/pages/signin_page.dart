import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liverun_xi/widgets/InputTextField.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmPassword;

  @override
  void initState() {
    // TODO: implement initState
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final height = MediaQuery.of(context).size.height * 0.9;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 200),
                // TextField(
                //   controller: _email,
                //   decoration: InputDecoration(
                //       hint: Text("Enter Your Email")
                //   ),
                // ),
                InputTextField(
                  controller: _email,
                  icon: Icon(Icons.email_outlined),
                  hint: "Enter your email",
                  width: width * 0.5,
                ),

                InputTextField(
                  icon: Icon(Icons.key),
                  controller: _password,
                  hint: "Create a password",
                  width: width * 0.5,
                ),

                InputTextField(
                  icon: Icon(Icons.key),
                  controller: _confirmPassword,
                  hint: "Reenter your password",
                  width: width * 0.5,
                ),

                ElevatedButton(onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _email.text,
                      password: _password.text,
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                }, child: Text("Submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
