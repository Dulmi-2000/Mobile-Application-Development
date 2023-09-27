import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/main_login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required String inputText});

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
        MaterialPageRoute(
            builder: (context) => const LoginFirstPage(
                  inputText: '',
                )),
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
                      width: size.width / 2.3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
