import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/presentation/onboarding/splash_screen.dart';


void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Ardilla Mobile Application',
      // theme: ThemeData(
      //   primarySwatch: Palette.primaryColor,
      // ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


