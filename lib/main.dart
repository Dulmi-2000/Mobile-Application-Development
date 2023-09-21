import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Pages/attendence_event.dart';
import 'Pages/attendence.dart';
import 'package:device_preview/device_preview.dart';
import 'Pages/splash_page.dart';

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
      
      home: TodayAttendanceEvents(inputText: '',),///////////
      
      debugShowCheckedModeBanner: false,
    );
  }
}