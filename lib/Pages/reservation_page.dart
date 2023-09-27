import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/ground_reservation_page.dart';
import 'package:npaly_application/Pages/gymnasium_reservation_page.dart';
import 'package:npaly_application/Pages/home_page.dart';
import 'package:npaly_application/Pages/nav_bar.dart';
import 'package:npaly_application/Pages/pool_reservation_page.dart';

import 'package:npaly_application/Pages/rec_reservation_page.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //row mokuth dala na default widihata hadala tyenne . kagen hari ahala app bar ektth ewa dann onida kiyala blnn.
        backgroundColor: HexColor("#39B54A"),
        //backbutton
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(
                  inputText: '',
                ),
              ),
            );
          },
          icon: const Icon(LineAwesomeIcons.arrow_left),
        ),
        title: const Text(
          "Reservations",
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
            ReservationPageItem(
              imagePath: "assets/gym.png",
              placeName: "Gymnasium",
              //club page eke link eka dann ontap athulata
              onTap: () {
                //profilepage kiyana thana navigate wenn oni page eke nama dann
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return const GymnasiumResrvationPage();
                }));
              },
            ),
            ReservationPageItem(
              imagePath: "assets/swimming_club.jpeg",
              placeName: "Swimming pool",
              //club page eke link eka dann ontap athulata
              onTap: () {
                //profilepage kiyana thana navigate wenn oni page eke nama dann
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return const PoolResrvationPage();
                }));
              },
            ),
            ReservationPageItem(
              imagePath: "assets/rec.jpeg",
              placeName: "Recreational center",
              //club page eke link eka dann ontap athulata
              onTap: () {
                //profilepage kiyana thana navigate wenn oni page eke nama dann
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return const RecReservationPage();
                }));
              },
            ),
            ReservationPageItem(
              imagePath: "assets/ground.jpg",
              placeName: "Ground",
              //club page eke link eka dann ontap athulata
              onTap: () {
                //profilepage kiyana thana navigate wenn oni page eke nama dann
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return const GroundResrvationPage();
                }));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBarPage(),
    );
  }
}

class ReservationPageItem extends StatelessWidget {
  //reusable variables
  final String imagePath;
  final String placeName;
  final VoidCallback onTap;

  const ReservationPageItem({
    super.key,
    required this.imagePath,
    required this.placeName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3, // Image takes 75% of the available space
                child: Padding(
                  //flex: 3,
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                  //padding: const EdgeInsets.only(top: 10.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    child: Image.asset(
                      imagePath,
                      //aspect ratio walin dann therenne na. blnnoni
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1, // Text takes 25% of the available space
                //aspect ratio walin dann therenne na. blnnoni
                //height: 50,
                child: Center(
                  child: Text(
                    placeName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
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
