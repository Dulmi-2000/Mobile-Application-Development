import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/profile_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

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
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          icon: const Icon(LineAwesomeIcons.arrow_left),
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
          child: Container(
              height: size.height / 1.4,
              //width: size.width / 1.125,
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
              child: Column(children: [
                //middle space in container
                SizedBox(
                  height: size.height / 80,
                ),

                const Padding(
                  padding: EdgeInsets.all(14),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Student Name',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 14, right: 14),
                  child: TextFormField(
                    decoration: InputDecoration(
                      //display text
                      labelText: 'Student Name',

                      hintStyle: TextStyle(
                          //text color
                          color: HexColor("B0B0B0")),

                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: HexColor("B0B0B0"))),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      //color: Color.fromARGB(235, 158, 157, 154),
                      letterSpacing: 0.3,
                    ),
                  ),
                ),

                //deweni field set ek
                SizedBox(
                  height: size.height / 80,
                ),

                const Padding(
                  padding: EdgeInsets.all(14),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Student ID',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 14, right: 14),
                  child: TextFormField(
                    decoration: InputDecoration(
                      //display text
                      labelText: 'Student ID',

                      hintStyle: TextStyle(
                          //text color
                          color: HexColor("B0B0B0")),

                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: HexColor("B0B0B0"))),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      //color: Color.fromARGB(235, 158, 157, 154),
                      letterSpacing: 0.3,
                    ),
                  ),
                ),

                //thunweni set ek
                SizedBox(
                  height: size.height / 80,
                ),

                const Padding(
                  padding: EdgeInsets.all(14),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'Faculty',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 14, right: 14),
                  child: TextFormField(
                    decoration: InputDecoration(
                      //display text
                      labelText: 'Faculty',

                      hintStyle: TextStyle(
                          //text color
                          color: HexColor("B0B0B0")),

                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: HexColor("B0B0B0"))),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      //color: Color.fromARGB(235, 158, 157, 154),
                      letterSpacing: 0.3,
                    ),
                  ),
                ),

                //4weni eka
                SizedBox(
                  height: size.height / 80,
                ),

                const Padding(
                  padding: EdgeInsets.all(14),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'E-mail',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        //color: Color.fromARGB(235, 158, 157, 154),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 14, right: 14),
                  child: TextFormField(
                    decoration: InputDecoration(
                      //display text
                      labelText: 'E-mail',

                      hintStyle: TextStyle(
                          //text color
                          color: HexColor("B0B0B0")),

                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: HexColor("B0B0B0"))),
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
                  height: size.height / 20,
                ),

                //button

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
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
