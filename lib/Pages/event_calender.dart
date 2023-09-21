import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'event_item.dart';

class EventCalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Calendar'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2019, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
    );
  }
}
