import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/home_page.dart';

import 'package:npaly_application/Pages/nav_bar.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Add a delay (e.g., using Future.delayed) to simulate the splash screen.
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the HomePage after the splash screen is done.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            //////////////////change this code////////////////////////////////

            children: [
              Expanded(
                flex: 4,
                child: SizedBox(
                  width: double.infinity,
                  //padding: const EdgeInsets.only(right: 10),

                  child: Center(
                    child: Image.asset(
                      "assets/logo1.png",
                      height: size.height / 5,
                      width: size.width / 4,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                    child: Container(
                  padding: const EdgeInsets.all(30),
                  //  child: Image.asset("assets/logo2.png")
                )),
              )
            ],
          ),
        ));
  }
}
