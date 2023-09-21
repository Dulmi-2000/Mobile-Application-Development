<<<<<<< HEAD
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:device_preview/device_preview.dart';
import 'package:npaly_application/Pages/payment_main_page.dart';
import 'package:npaly_application/Pages/settings_profile.dart';


=======
import 'Pages/attendence_event.dart';
import 'Pages/attendence.dart';
import 'package:device_preview/device_preview.dart';
import 'Pages/splash_page.dart';
>>>>>>> fc32bb37d08f0dd85541cf5fe577e8389ca61b8a

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);


<<<<<<< HEAD
/*

void main() {
  runApp(const MyApp());
}
*/
=======

>>>>>>> fc32bb37d08f0dd85541cf5fe577e8389ca61b8a
=======
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'Pages/notification.dart';
import 'Pages/event_calender.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventCalender(),
=======
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
<<<<<<< HEAD
>>>>>>> origin/development
=======
>>>>>>> 4f7e0eb147cf61572d934a740109070429b03c6f
>>>>>>> fc32bb37d08f0dd85541cf5fe577e8389ca61b8a

class MyApp extends StatelessWidget {
=======
class MyApp extends StatefulWidget {
>>>>>>> af96ebcd16ba8cc931d715eb95efd4fe116aea0a
  const MyApp({super.key});

<<<<<<< HEAD
 
=======
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
>>>>>>> origin/development
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<< HEAD
      
<<<<<<< HEAD
<<<<<<< HEAD

      home: Settings(inputText: '',),
      

=======
      home: TodayAttendanceEvents(inputText: '',),///////////
>>>>>>> fc32bb37d08f0dd85541cf5fe577e8389ca61b8a
=======
      home: Basketballpage(inputText: '',),///////////
>>>>>>> 4f7e0eb147cf61572d934a740109070429b03c6f
      
=======
      home: SplashPage(), ///////////

>>>>>>> af96ebcd16ba8cc931d715eb95efd4fe116aea0a
>>>>>>> origin/development
      debugShowCheckedModeBanner: false,
>>>>>>> origin/development
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
