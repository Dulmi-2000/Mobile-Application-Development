import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/home_page.dart';
import 'package:npaly_application/Pages/my_clubs_page.dart';
import 'package:npaly_application/Pages/profile_page.dart';
import 'package:npaly_application/Pages/reservation_page.dart';
import 'package:npaly_application/Pages/sports_clubs_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _currentIndex = 0;

  //creating list of widget to represent differnet pages

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          if (_currentIndex == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const HomePage())));
          }
          if (_currentIndex == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const SportsClubsPage())));
          }
          if (_currentIndex == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ReservationPage())));
          }
          if (_currentIndex == 3) {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const MyClubsPage())));
          }
          if (_currentIndex == 4) {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const ProfilePage())));
          }
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: 'Clubs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      unselectedItemColor:
          HexColor("#39B54A"), // Change the unselected item color
      selectedItemColor: HexColor("#39B54A"),
      showSelectedLabels:
          true, // Set to true to display labels for selected items
      showUnselectedLabels:
          true, // Set to true to display labels for unselected items// Change the selected item color
    );
  }
}
