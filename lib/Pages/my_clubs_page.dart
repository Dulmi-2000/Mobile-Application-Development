import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/cricket_page_myclubb.dart';
import 'package:npaly_application/Pages/profile_page.dart';
import 'package:npaly_application/Pages/sports_clubs_page.dart';

class MyClubsPage extends StatelessWidget {
  const MyClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          "My Clubs",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0 / 1.4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            //club ekt join unama club page item eka display wena widihata logic eka liyanna
            ClubPageItem(
              imagePath: "assets/cricket_club.png",
              clubName: "Cricket Club",
              //club page eke link eka dann ontap athulata
              onTap: () {
                //profilepage kiyana thana navigate wenn oni page eke nama dann
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AfterCricketpage(
                            inputText: '',
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
