import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:npaly_application/Pages/signin.dart';
import 'package:npaly_application/Pages/signup.dart';

class LoginFirstPage extends StatelessWidget {
  const LoginFirstPage({super.key, required String inputText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    height: size.height / 8,
                  ),
                  Image.asset(
                    "assets/login1.png",
                    height: size.height / 2,
                    width: size.width / 1,
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    //distance between image and button

                    Container(
                      height: size.height / 30,
                    ),

                    //sign in button
                    SizedBox(
                      height: size.height / 20,
                      width: size.width / 1.2,
                      child: ElevatedButton(
                        //actions of the button
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const signin(inputText: ''),
                            ),
                          );
                        },

                        //styles for the button
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor("#39B54A"),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                        ),
                        child: const Center(
                          child: Text(
                            "Sign in",
                            //styles for the text inside the button
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //space between 2 buttons
                    SizedBox(
                      height: size.height / 20,
                    ),

                    //sign up button
                    SizedBox(
                      height: size.height / 20,
                      width: size.width / 1.2,
                      child: ElevatedButton(
                        //actions of the button
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SignUpPage(inputText: ''),
                            ),
                          );
                        },
                        //styles for the button
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor("#39B54A"),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                        ),

                        child: const Text(
                          "Sign up",
                          //styles for the text inside the button
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
