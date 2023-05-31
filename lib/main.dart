import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/data/data_storage/user_profile_storage.dart';
import 'app/presentation/onboarding/splash_screen.dart';
import 'core/provider/home_provider/navigation_bar_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserProfileStorage.init();
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
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    )
    );
  }
}


