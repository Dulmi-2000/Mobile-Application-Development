import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          _buildSection('Today', [
            _buildNotificationCard(
              'Sport fiesta 2023 winning team',
              'The meetup aims to foster a spirit of friendly...',
              '10:00 AM',
            ),
            _buildNotificationCard(
              'New event of table tennis',
              'The meetup aims to foster a spirit of friendly...',
              '11:30 AM',
            ),
            _buildNotificationCard('New event of cricket',
                'Apart from the competitive aspect the ...', '11:30 AM'),
            _buildNotificationCard(
                'Badminton encounter 2023',
                'The Interuniversity Athletic Club Meetup is an ...',
                '11:30 AM'),
            _buildNotificationCard('Table tennis training session',
                'The meetup aims to foster a spirit of friendly', '11:30 AM'),
          ]),
          _buildSection('Last Week', _generateLastWeekNotifications()),
          // Add more sections here
        ],
      ),
    );
  }

  List<Widget> _generateLastWeekNotifications() {
    final List<Widget> notifications = [];

    // Generate 10 random notifications for the last week
    final List<String> titles = [
      'Table Tennis Match',
      'Cricket Tournament',
      'Badminton Challenge',
      'Soccer Game',
      'Chess Championship',
      'Running Marathon',
      'Yoga Session',
      'Basketball League',
      'Swimming Competition',
      'Golf Tournament',
    ];

    final List<String> descriptions = [
      'The meetup aims to foster a spirit of friendly competition.',
      'Apart from the competitive aspect, there will be fun activities.',
      'Join us for a challenging game of badminton.',
      'Friendly soccer match for sports enthusiasts.',
      'Test your chess skills in this championship.',
      'Participate in the marathon and enjoy the thrill of running.',
      'Relax and rejuvenate with our yoga session.',
      'Compete in the basketball league and win exciting prizes.',
      'Show off your swimming skills in this competition.',
      'Join us for a day of golfing fun.',
    ];

    final List<String> times = [
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
      '1 week ago',
    ];

    for (int i = 0; i < 10; i++) {
      final randomIndex = i % titles.length;
      notifications.add(
        _buildNotificationCard(
          titles[randomIndex],
          descriptions[randomIndex],
          times[randomIndex],
        ),
      );
    }

    return notifications;
  }

  Widget _buildSection(String title, List<Widget> notifications) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: notifications,
        ),
      ],
    );
  }

  Widget _buildNotificationCard(String title, String description, String time) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading:
            const Icon(Icons.notifications, size: 40), // Set the iconSize here
        iconColor: Colors.green,
        title: Text(title),
        subtitle: Text(
          description.length > 30
              ? description.substring(0, 30) + '...'
              : description,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(time),
            IconButton(
              icon: const Icon(Icons.delete_outline, size: 30),
              color: Colors.green,
              onPressed: () {
                // Handle delete action
              },
            ),
          ],
        ),
      ),
    );
  }
}
