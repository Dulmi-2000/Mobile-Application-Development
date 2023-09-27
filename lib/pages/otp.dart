import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/resetpassword.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key, required String inputText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height / 45,
                      ),

                      //text- pay here
                      const Text(
                        "OTP Verification",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),

                      //space between 2 texts
                      SizedBox(
                        height: size.height / 90,
                      ),

                      //text - get paid for nsbm
                      const Text(
                        "Check Your email to see the verification code",
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),

                      SizedBox(
                        height: size.height / 50,
                      ),

                      Image.asset(
                        "assets/otp.png",
                        height: size.height / 2.7,
                        width: size.width / 1.1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        //otp section

                        SizedBox(
                          height: size.height / 10,
                        ),

                        Container(
                          width: size.width / 1.2,
                          child: OTPTextField(
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 40,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            onCompleted: (pin) {
                              // print("Completed: " + pin);
                            },
                          ),
                        ),

                        SizedBox(
                          height: size.height / 40,
                        ),

                        //otp resend
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Resend the OTP code',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: HexColor('#39B54A'),
                                fontSize: 15,
                              ),
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

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPasswordPage(
                                    inputText: '',
                                  ), // Replace with the screen you want to navigate to
                                ),
                              );
                              //myController.clear();

                              ///
                            },
                            child: const Text(
                              'Verify',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
