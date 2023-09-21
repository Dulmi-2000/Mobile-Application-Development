import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: camel_case_types
class splashPage extends StatelessWidget {
  const splashPage({super.key});

  get title => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor('#39B54A'),
      ),
      body: Column(
        children: [
          // Space at the top of the page
          SizedBox(
            height: size.height / 8,
            width: size.width,
          ),

          // Horizontal scrolling row of green containers
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Green color containers
                for (int i = 0; i < 8; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 15,
                      width: size.width / 5,
                      decoration: BoxDecoration(
                        color: HexColor('#39B54A'),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
