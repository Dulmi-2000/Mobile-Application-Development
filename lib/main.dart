import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/splash_page.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashPage(), ///////////

      debugShowCheckedModeBanner: false,
    );
  }
}



/*style guide

appbar title style ............



icon......................
1. back page
Icon(LineAwesomeIcons.angle_left)
2.notification icon
Icon(LineAwesomeIcons.bell)
3.setting icon
Icon(LineAwesomeIcons.cog)




*/
