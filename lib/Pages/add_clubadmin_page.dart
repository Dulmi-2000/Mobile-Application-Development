import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/admin_dashboard.dart';

import 'package:npaly_application/Pages/successful_add_club.dart';
import 'package:npaly_application/Pages/successful_add_clubadmin.dart';

class AddClubAdminPage extends StatelessWidget {
  const AddClubAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        //row mokuth dala na default widihata hadala tyenne . kagen hari ahala app bar ektth ewa dann onida kiyala blnn.
        backgroundColor: HexColor("#39B54A"),
        //backbutton
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AdminProfilePage(),
              ),
            );
          },
          icon: const Icon(LineAwesomeIcons.arrow_left),
        ),
        title: const Text(
          "Add Club Admin",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //space in the top of the page
              SizedBox(
                height: size.height / 45,
              ),

              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Add Club Admin Form",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1),
                ),
              ),

              //text

              //space in the top of the page
              SizedBox(
                height: size.height / 35,
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: size.height / 1.2,
                    width: size.width / 1.125,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(33, 164, 165, 167),
                      //color: HexColor("#B0B0B0"), // Fill color
                      /////////////////////////////////////////////////////////////////////////

                      border: Border.all(
                        color: Color.fromARGB(157, 121, 99, 98), // Border color
                        width: 0.5, // Border width
                      ),
                      borderRadius: BorderRadius.circular(6), // Border radius
                    ),
                    child: Column(
                      children: [
                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Club Name',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),

                          //id feild
                          child: TextFormField(
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Club Name',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Club Admin Name',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),

                          //id feild
                          child: TextFormField(
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Club Admin Name',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Club Admin User Name',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),

                          //id feild
                          child: TextFormField(
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Club Admin User Name',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Club Admin ID',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),

                          //id feild
                          child: TextFormField(
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Club Admin ID',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'E mail',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),

                          //id feild
                          child: TextFormField(
                            decoration: InputDecoration(
                              //display text
                              labelText: 'E mail',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        //middle space in container

                        SizedBox(
                          height: size.height / 20,
                        ),

                        ///buttton for submit

                        SizedBox(
                          height: size.height / 20,
                          width: size.width / 1.2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor("#39B54A"),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SuccesfulAddClubAdminPage(
                                          inputText: '',
                                        )),
                              );
                            },
                            child: const Text(
                              'Add Club Admin',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 35,
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
    );
  }
}
