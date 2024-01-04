import 'package:birthday/views/screens/screen_home.dart';
import 'package:birthday/views/screens/screen_info.dart';
import 'package:birthday/views/screens/screen_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        home: ScreenInfo(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
