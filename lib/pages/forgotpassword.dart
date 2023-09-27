//import 'package:dropdown_button2/dropdown_button2.dart';
//import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:npaly_application/Pages/otp.dart';

//import 'package:npaly_application/Pages/card_paymnet.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key, required String inputText});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

TextEditingController emailController = TextEditingController();

String email = '';

String emailError = '';

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

        //background color of the page
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 1.8,
                  child: Column(
                    children: [
                      //space in top
                      SizedBox(
                        height: size.height / 25,
                      ),

                      //text- pay here
                      const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),

                      //space between 2 texts
                      SizedBox(
                        height: size.height / 100,
                      ),

                      //text - get paid for nsbm
                      const Text(
                        "Enter your email to reset password",
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),

                      //space between text and image
                      /*    SizedBox(
                  height: size.height/500,    
                ),
                */

                      //image
                      Image.asset(
                        "assets/passimage.png",
                        height: size.height / 2.45,
                        width: size.width / 1.1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 100,
                  width: size.width / 3,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 10),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 2.2,
                  width: double.infinity,
                  child: Column(
                    children: [
                      //time taken
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: size.height / 35,
                          maxWidth: size.width / 1.2,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor("B0B0B0"),
                              ),
                            ),
                            isDense: true,
                            errorText:
                                emailError.isNotEmpty ? emailError : null,
                            errorMaxLines: 1,
                            errorStyle: const TextStyle(
                              color: Colors.red,
                              fontSize: 12.5,
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),

                      //space between  box continue button
                      SizedBox(height: size.height / 15),

                      //continue button

                      SizedBox(
                        height: size.height / 20,
                        width: size.width / 1.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor("#39B54A"),
                          ),
                          onPressed: () {
                            // doValidation(BuildContext);
                            doValidationEmail();

                            //myController.clear();

                            ///
                          },
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void doValidationEmail() {
    String email = emailController.text.trim();

    if (email.isEmpty) {
      setState(() {
        emailError = 'Please enter an emai';
      });
    }

    if (isEmailValid(email)) {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpPage(
              inputText: '',
            ), // Replace with the screen you want to navigate to
          ),
        );
      });
    } else {
      setState(() {
        emailError = 'Email is invalid!';
      });
    }
  }

  bool isEmailValid(String email) {
    return EmailValidator.validate(email);
  }
}
