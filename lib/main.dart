import 'package:flutter/material.dart';

import 'layouts/homeLayout.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));

  Widget startWidget= homeScreen();
  runApp( MyApp(startScreen: startWidget,));
}

class MyApp extends StatelessWidget {

  var startScreen;

  MyApp

  ({super.key,this.startScreen});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home:startScreen,
    );
  }

}