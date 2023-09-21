import 'package:flutter/material.dart';
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
    );
  }
}
