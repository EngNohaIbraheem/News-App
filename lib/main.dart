import 'package:flutter/material.dart';
import 'package:newssssssssss/view/home_view.dart';
import 'package:newssssssssss/view/splash_view.dart';


void main() {
  runApp( MyApplication());
}


class MyApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our News',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        HomeView.routeName: (context) => HomeView(),
      },
    );
  }
}
