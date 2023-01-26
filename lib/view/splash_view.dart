import 'dart:async';

import 'package:flutter/material.dart';

import 'home_view.dart';

class SplashView extends StatelessWidget {
  static const routeName = "splashView";
  @override
  Widget build(BuildContext context) { 
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(HomeView.routeName);
    });
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/images/pattern.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
backgroundColor: Colors.transparent,
          body: Center(
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        )
      ],
    );
  }
}
