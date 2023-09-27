import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/attendence.dart';

class TodayAttendanceEvents extends StatelessWidget {
  const TodayAttendanceEvents({Key? key, required String inputText});

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
              "Attendance",
              style: TextStyle(
                fontSize: 20,
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

        //main container
        body: SingleChildScrollView(
          child: SingleChildScrollView(
              child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Today Events",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: size.height / 7.5,

              // Brown color for the outer container
              padding: const EdgeInsets.all(16.0),

              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(33, 164, 165, 167),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(157, 121, 99, 98),
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,

                            ///navigation

                            MaterialPageRoute(
                              builder: (context) => const AttendenceMark(
                                inputText: '',
                              ),
                            ),
                          );

                          //////////////////////
                        },
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .baseline, // Align children at the baseline
                              textBaseline: TextBaseline
                                  .alphabetic, // Use the alphabetic baseline
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: size.height / 20,
                                    width: size.width / 1.2,
                                    child: const Text(
                                      "Chess Practices",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      const Icon(
                                        EvaIcons
                                            .calendarOutline, // the Eva Icons
                                        color: Color.fromARGB(225, 36, 3, 3),
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: size.width / 35,
                                      ),
                                      const Text(
                                        "10:00 AM",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                width: size.width,
                height: size.height / 7.5,

                // Brown color for the outer container
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(33, 164, 165, 167),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(157, 121, 99, 98),
                      width: 0.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment
                                  .baseline, // Align children at the baseline
                              textBaseline: TextBaseline
                                  .alphabetic, // Use the alphabetic baseline
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: size.height / 20,
                                    width: size.width / 1.2,
                                    child: const Text(
                                      "Rugby Practices",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width / 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      const Icon(
                                        EvaIcons
                                            .calendarOutline, // the Eva Icons
                                        color: Color.fromARGB(225, 36, 3, 3),
                                        size: 25,
                                      ),
                                      SizedBox(
                                        width: size.width / 35,
                                      ),
                                      const Text(
                                        "02:00 PM",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ])),
        ));
  }
}
