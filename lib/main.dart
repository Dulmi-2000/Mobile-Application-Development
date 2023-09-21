<<<<<<< HEAD
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



=======
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:npaly_application/Pages/athletic_club.dart';
import 'package:npaly_application/Pages/basketball_club.dart';
=======
import 'package:npaly_application/Pages/splash_page.dart';
>>>>>>> af96ebcd16ba8cc931d715eb95efd4fe116aea0a

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

<<<<<<< HEAD
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );
>>>>>>> 4f7e0eb147cf61572d934a740109070429b03c6f

class MyApp extends StatelessWidget {
=======
class MyApp extends StatefulWidget {
>>>>>>> af96ebcd16ba8cc931d715eb95efd4fe116aea0a
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<< HEAD
      
<<<<<<< HEAD
      home: TodayAttendanceEvents(inputText: '',),///////////
=======
      home: Basketballpage(inputText: '',),///////////
>>>>>>> 4f7e0eb147cf61572d934a740109070429b03c6f
      
=======
      home: SplashPage(), ///////////

>>>>>>> af96ebcd16ba8cc931d715eb95efd4fe116aea0a
      debugShowCheckedModeBanner: false,
    );
  }
<<<<<<< HEAD
}
=======
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
>>>>>>> 4f7e0eb147cf61572d934a740109070429b03c6f
