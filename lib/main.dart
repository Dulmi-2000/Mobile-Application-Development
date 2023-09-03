import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/card_paymnet.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);
/*

void main() {
  runApp(const MyApp());
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      

      home: CardPaymentPage(),///////////
      

      debugShowCheckedModeBanner: false,
    );
  }
}
