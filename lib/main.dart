import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/presentation/home/bottom_navigation/navigation_bar.dart';
import 'app/presentation/onboarding/splash_screen.dart';
import 'core/provider/home_provider/navigation_bar_provider.dart';


void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => BottomBarNav()),
    ],
    child: const MaterialApp(
      title: 'Ardilla Mobile Application',
      // theme: ThemeData(
      //   primarySwatch: Palette.primaryColor,
      // ),
      home: Nav(),
      debugShowCheckedModeBanner: false,
    )
    );
  }
}


