import 'package:flutter/material.dart';
import 'package:junelfapps/ui/landing.dart';
import 'package:junelfapps/ui/login_screen.dart';
import 'package:junelfapps/ui/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    openHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xff3d55d1),
                gradient: LinearGradient(
                    colors: [(new Color(0xff3d55d1)), (new Color(0xff3d55d1))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assist/logo_1.png"),
            ),
          )
        ],
      ),
    );
  }

  openHome() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => SignInScreen()));
    });
  }
}
