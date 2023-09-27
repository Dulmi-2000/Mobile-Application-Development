import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/add_club_page.dart';
import 'package:npaly_application/Pages/add_clubadmin_page.dart';
import 'package:npaly_application/Pages/add_events_page.dart';
import 'package:npaly_application/Pages/cricket_club.dart';
import 'package:npaly_application/Pages/view_club_admin.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Admin Dashboard",
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

        //background color of the page
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  //space in between text and image
                  SizedBox(
                    height: size.height / 20,
                  ),

                  //button for pay now
                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#39B54A")),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      onPressed: () {
                        //navigation to payment_selection page
                        Navigator.push(
                          context,
                          ///////////////////////////////////////////////////////////////////////
                          ///navigation

                          MaterialPageRoute(
                              builder: (context) => const AddClubPage()),
                        );
                      },
                      child: const Text(
                        'Add Club',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  //middle space

                  SizedBox(
                    height: size.height / 20,
                  ),

                  // button for payment history
                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#39B54A")),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      onPressed: () {
                        //navigation to payment_selection page
//navigation to payment_selection page
                        Navigator.push(
                          context,
                          ///////////////////////////////////////////////////////////////////////
                          ///navigation

                          MaterialPageRoute(
                              builder: (context) => const ViewClubsPage()),
                        );
                      },
                      child: const Text(
                        'View Club',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height / 20,
                  ),

                  // button for payment history
                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#39B54A")),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      onPressed: () {
                        //navigation to payment_selection page
                        //navigation to payment_selection page
                        Navigator.push(
                          context,
                          ///////////////////////////////////////////////////////////////////////
                          ///navigation

                          MaterialPageRoute(
                              builder: (context) => const AddEventAdminPage()),
                        );
                      },
                      child: const Text(
                        'Add Event',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height / 20,
                  ),

                  // button for payment history
                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#39B54A")),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      onPressed: () {
                        //navigation to payment_selection page
                      },
                      child: const Text(
                        'View Events',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height / 20,
                  ),

                  // button for payment history
                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#39B54A")),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                      onPressed: () {
                        //navigation to payment_selection page
                        Navigator.push(
                          context,
                          ///////////////////////////////////////////////////////////////////////
                          ///navigation

                          MaterialPageRoute(
                              builder: (context) => const AddClubAdminPage()),
                        );
                      },
                      child: const Text(
                        'Add Club Admin',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
