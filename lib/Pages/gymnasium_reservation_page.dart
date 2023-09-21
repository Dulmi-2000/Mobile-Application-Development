import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/reservation_page.dart';
import 'package:riverpod/riverpod.dart';

final selectedTime = StateProvider((ref) => '');

class GymnasiumResrvationPage extends StatefulWidget {
  const GymnasiumResrvationPage({super.key});

  @override
  State<GymnasiumResrvationPage> createState() =>
      _GymnasiumResrvationPageState();
}

class _GymnasiumResrvationPageState extends State<GymnasiumResrvationPage> {
//1.availabilitychech of time
  List<bool> slotAvailability =
      List.generate(TIME_SLOT.length, (index) => true);

//date picker
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            // calendar color
            primaryColor: HexColor('#39B54A'),
            hintColor: HexColor('#39B54A'),
            colorScheme: ColorScheme.light(
              primary: HexColor('#39B54A'),
            ),
            textTheme: const TextTheme(
              bodyText1: TextStyle(fontSize: 16.0),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _toggleAvailability(int index) {
    setState(() {
      slotAvailability[index] = !slotAvailability[index];
    });
  }

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
                  builder: (context) => const ReservationPage(),
                ),
              );
            },
            icon: const Icon(LineAwesomeIcons.arrow_left),
          ),
          title: const Text(
            "Gymnasium Reservation",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              color: HexColor("#39B54A"),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text(
                              _selectedDate != null
                                  ? DateFormat.MMMM().format(_selectedDate!)
                                  : '',
                              style: const TextStyle(color: Colors.white54),
                            ),
                            Text(
                              _selectedDate != null
                                  ? "${_selectedDate!.day}"
                                  : '',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            Text(
                              _selectedDate != null
                                  ? "${_selectedDate!.year}"
                                  : '',
                              style: const TextStyle(color: Colors.white54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () => _selectDate(context),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child:
                              Icon(Icons.calendar_today, color: Colors.white),
                        ),
                      )),
                ],
              ),
            ),

            //
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                  itemCount: TIME_SLOT.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0 / 1.0,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (slotAvailability[index]) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return MyPopup(
                              onConfirm: () {
                                _toggleAvailability(index);
                                Navigator.of(context).pop(); // Close the popup
                              },
                            ); // Display the custom popup widget
                          },
                        );
                      }
                    },
                    child: Card(
                      color:
                          slotAvailability[index] ? Colors.white54 : Colors.red,
                      child: GridTile(
                          child: Center(
                              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${TIME_SLOT.elementAt(index)}',
                          ),
                          Text(
                            slotAvailability[index]
                                ? "Available"
                                : "Unavailable",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

const TIME_SLOT = {
  '9.00-10.00',
  '10.00-11.00',
  '11.00-12.00',
  '12.00-13.00',
  '13.00-14.00',
  '14.00-15.00',
  '15.00-16.00',
  '16.00-17.00',
};

class MyPopup extends StatelessWidget {
  final VoidCallback onConfirm;
  const MyPopup({Key? key, required this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Confirm your Reservation'),
      content: const Text('are you sure you want to confirm this reservation?'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            onConfirm();
          },
          child: Text(
            'Confirm',
            style: TextStyle(color: HexColor('#39B54A')),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the popup
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: HexColor('#39B54A')),
          ),
        ),
      ],
    );
  }
}
