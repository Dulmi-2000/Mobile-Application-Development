import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "My Clubs",
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: NavBarPage(),
    );
  }
}
