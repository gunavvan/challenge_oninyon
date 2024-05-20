import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oninyon_challenge/login_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // Future.delayed(
    //     const Duration(seconds: 3),
    //         () => Get.off(HomeView()));
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>
        const LoginPage(),
      ),
    ),);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        //backgroundColor: Colors.white,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network("https://oninyon.com/images/bob/logo.png",
              width: 200, height: 200),
          const SizedBox(
            height: 15,
            width: 15,
          ),
        ],
      ),
    ));
  }
}
