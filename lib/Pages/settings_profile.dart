import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Settings extends StatefulWidget {
  const Settings({super.key, required String inputText});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Settings",
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 0.3,
            ),
          ),
        ),
        backgroundColor: HexColor('#39B54A'),

        //to chnge app bar size

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.01),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
          ),
        ),
      ),

      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 70,
            ),

            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Notification",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            Container(
              height: size.height / 15, // Adjust the height as needed
              width: size.width / 1.12,

              decoration: BoxDecoration(
                color: const Color.fromARGB(33, 164, 165, 167),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(157, 121, 99, 98),
                  width: 0.5,
                ),
              ),

// Adjust the width as needed
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Send Notifications",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 5,
                  ),
                  Align(
                    alignment: Alignment.centerRight,

                    // Align to the top right corner
                    child: SizedBox(
                      height: 35.0,
                      width: 80.0,
                      child: LiteRollingSwitch(
                        value: false,
                        onChanged: (bool state) {},
                        onDoubleTap: () {},
                        onSwipe: () {},
                        onTap: () {},
                        iconOn: Icons.done,
                        colorOn: HexColor('#39B54A'),
                        colorOff: Color.fromARGB(255, 112, 108, 108),
                        animationDuration: const Duration(milliseconds: 300),
                        iconOff: Icons.close_outlined,
                        textSize: 11.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: size.height / 55,
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Privacy",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(33, 164, 165, 167),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(157, 121, 99, 98),
                  width: 0.5,
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle the tap for the first InkWell
                      // Navigate to the Privacy settings or perform some action
                    },
                    child: SizedBox(
                      width: size.width / 1.15, // Occupy the entire width
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Privacy Policy',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: size.height / 55,
            ),

            //general
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "General",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(33, 164, 165, 167),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(157, 121, 99, 98),
                  width: 0.5,
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle the tap for the first InkWell
                      // Navigate to the Privacy settings or perform some action
                    },
                    child: SizedBox(
                      width: size.width / 1.15, // Occupy the entire width
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'About NPlay',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height / 100,
                  ),

                  //middle line
                  Container(
                    height: size.height / 700,
                    width: size.width / 1.2,
                    color: const Color.fromARGB(157, 121, 99, 98),
                  ),

                  SizedBox(
                    height: size.height / 100,
                  ),

                  InkWell(
                    onTap: () {
                      // Handle the tap for the second InkWell
                      // Navigate to another setting or perform some action
                    },
                    child: SizedBox(
                      width: size.width / 1.2, // Occupy the entire width
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Contact Us',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: size.height / 100,
            ),
          ],
        ),
      ),
    );
  }
}
