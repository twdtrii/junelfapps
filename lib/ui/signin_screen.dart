import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:junelfapps/ui/signup_screen.dart';
import 'package:junelfapps/utils/color_utils.dart';

import '../reusable_widget/reusable_widget.dart';
import 'home2_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2893"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F7")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: <Widget> [
                    logoWidget("assist/logo2.png"),
                    SizedBox(
                      height: 10,
                    ),
                    reusableTextField("Enter UserName", Icons.verified_user, false,
                        _emailTextController),
                    SizedBox(
                      height: 10,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                    SizedBox(
                      height: 10,
                    ),
                    signInSignUpButton(context, true, () {
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                      .then((value) {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen2()));
                      });
                    }),
                    signUpOption()
                  ],
                ),
              ),
        ),
    );
  }
  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't Have Account?",
        style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

}























