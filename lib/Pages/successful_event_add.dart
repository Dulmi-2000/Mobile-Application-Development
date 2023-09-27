import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/admin_dashboard.dart';
import 'package:npaly_application/Pages/main_login.dart';

class SuccessEventAddPage extends StatelessWidget {
  const SuccessEventAddPage({super.key, required String inputText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        //height and width for the page
        height: double.infinity,
        width: double.infinity,

        color: HexColor("#39B54A"),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //space between top and image
              SizedBox(
                height: size.height / 22,
              ),

              //right icon
              const SizedBox(
                child: Icon(
                  EvaIcons.checkmarkCircle2Outline,
                  color: Colors.white,
                  size: 250, // Adjust the size as needed
                ),
              ),

              //space between icon and text
              SizedBox(
                height: size.height / 45,
              ),

              const SizedBox(
                child: Text(
                  "Successfully added event.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                    color: Colors.white,
                  ),
                ),
              ),

              //space between 2 texts
              SizedBox(
                height: size.height / 50,
              ),

              //texts

              const SizedBox(
                child: Text(
                  "Thank you!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: Colors.white,
                  ),
                ),
              ),

              //texts

              //space between text and button
              SizedBox(
                height: size.height / 8,
              ),

              //color: HexColor("#39B54A"),

              //continue button
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 21,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        ///////////////////////////////////////////////////////////////////////
                        ///navigation

                        MaterialPageRoute(
                            builder: (context) => const AdminProfilePage()),
                      );
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        color: HexColor("#39B54A"),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
