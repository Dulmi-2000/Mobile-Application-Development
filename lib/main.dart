import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/home_page.dart';
import 'package:npaly_application/Pages/splash_page.dart';

void main() => runApp(
  DevicePreview(
    builder:(context) => const MyApp()
     ),
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: HomePage(),///////////
      
      debugShowCheckedModeBanner: false,
    );
  }
}
