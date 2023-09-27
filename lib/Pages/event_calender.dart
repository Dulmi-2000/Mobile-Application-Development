import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/nav_bar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'event_item.dart';

class EventCalender extends StatefulWidget {
  const EventCalender({super.key});

  @override
  State<EventCalender> createState() => _EventCalenderState();
}

class _EventCalenderState extends State<EventCalender> {
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Calendar'),
        backgroundColor: HexColor("#39B54A"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 40,
            ),
            Container(
              width: size.width / 1.05,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TableCalendar(
                  firstDay: DateTime.utc(2019, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  selectedDayPredicate: (day) {
                    // Check if the day is selected
                    return isSameDay(_selectedDay, day);
                  },
                  calendarStyle: CalendarStyle(
                    selectedDecoration: BoxDecoration(
                        color: HexColor("#39B54A"), shape: BoxShape.circle
                        //borderRadius: BorderRadius.circular(22.0),
                        ),

                    todayDecoration: const BoxDecoration(
                      color:
                          Color.fromARGB(157, 121, 99, 98), // Color for today
                      shape: BoxShape.circle,
                    ),
                    //borderRadius: BorderRadius.circular(22.0),
                  ),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const EventItem(
                  title: 'Badminton Tournament',
                  day: 'Day Number',
                  time: '2:00 pm - 3:00 pm',
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const EventItem(
                  title: 'Badminton Tournament',
                  day: 'Day Number',
                  time: '2:00 pm - 3:00 pm',
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const EventItem(
                  title: 'Badminton Tournament',
                  day: 'Day Number',
                  time: '2:00 pm - 3:00 pm',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarPage(),
    );
  }
}
