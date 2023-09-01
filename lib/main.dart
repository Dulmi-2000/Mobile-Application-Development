import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/splash_page.dart';
import 'Pages/payment_selection.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: SplashPage(),///////////
      
      debugShowCheckedModeBanner: false,
    );
  }
}
