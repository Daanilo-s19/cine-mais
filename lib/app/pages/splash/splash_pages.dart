import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/routes/app_pages.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  final int _splashTimer = 3000;

  void navigationToNextPage() async {
    Get.offAllNamed(Routes.ONBOARDING);
    //TODO: add routes
    // if (_userController.user != null) {
    //   Modular.to.pushReplacementNamed('/home');
    // } else {
    //   Modular.to.pushReplacementNamed('/onboarding');
    // }
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(milliseconds: _splashTimer);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue));

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Icon(Icons.ac_unit),
          ),
        ],
      ),
    );
  }
}
