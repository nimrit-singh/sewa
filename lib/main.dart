import 'package:flutter/material.dart';
import 'package:sewa/Pages/Signin.dart';
import 'package:sewa/Pages/splashscreen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.green, // status bar color
    statusBarBrightness: Brightness.dark,//status bar brigtness
    statusBarIconBrightness:Brightness.dark , //status barIcon Brightness
    systemNavigationBarDividerColor: Colors.white60,//Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon 
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Signin(),
      //dashboard: Dashboard(),
    );
  }
}
