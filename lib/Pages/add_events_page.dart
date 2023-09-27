import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/admin_dashboard.dart';

import 'package:npaly_application/Pages/successful_add_club.dart';
import 'package:npaly_application/Pages/successful_event_add.dart';
import 'package:time_range_picker/time_range_picker.dart';

class AddEventAdminPage extends StatefulWidget {
  const AddEventAdminPage({super.key});

  @override
  State<AddEventAdminPage> createState() => _AddEventAdminPageState();
}

class _AddEventAdminPageState extends State<AddEventAdminPage> {
  TextEditingController timeController = TextEditingController();

//time picker
  Future<void> _selectTimeRange(BuildContext context) async {
    TimeRange result = await showTimeRangePicker(
      context: context,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: HexColor('#39B54A'),
            hintColor: HexColor('#39B54A'),
            colorScheme: ColorScheme.light(
              primary: HexColor('#39B54A'),
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 16.0),
            ),
          ),
          child: child!,
        );
      },
    );
    if (result != null) {
      setState(() {
        String formattedStartTime =
            "${result.startTime.hour}:${result.startTime.minute}";
        String formattedEndTime =
            "${result.endTime.hour}:${result.endTime.minute}";

        timeController.text = '$formattedStartTime - $formattedEndTime';
      });
    }
  }

  DateTime? _selectedDate;
//date picker
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
          "Add Event",
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
                  "Add Event Form",
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
                    height: size.height / 0.9,
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
                              'Event Name',
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
                              labelText: 'Event Name',

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
                              'Description',
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
                              labelText: 'Description',

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
                              'Location',
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
                              labelText: 'Location',

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
                              'Date',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ///date
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            readOnly: true,
                            controller: TextEditingController(
                              text: _selectedDate != null
                                  ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                                  : '',
                            ),

                            /*      
                         onChanged: (value) {
                          setState(() {
                            // Update the student ID and trigger validation
                            date = value;
                            doValidationdate();
                          
                
                          dateError='';
                          });
                        },
                      */

                            decoration: InputDecoration(
                              hintText: 'Select the date',
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: HexColor("B0B0B0")),
                              ),
                              isDense: true,

                              //   errorText: dateError.isNotEmpty ? dateError : null,

                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),

                              //calandar icon
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.calendar_today),
                                iconSize: 20,
                                onPressed: () => _selectDate(context),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: size.height / 80,
                        ),

                        //time slot
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Time Range',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        //time taken
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            readOnly: true,
                            onTap: () => _selectTimeRange(context),
                            controller: timeController,
                            /*      
                                  
                         onChanged: (value) {
                          setState(() {
                            // Update the student ID and trigger validation
                            time = value;
                            doValidationtime();
                          });
                        },
                */

                            decoration: InputDecoration(
                              hintText: 'Select Time Range',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: HexColor("B0B0B0"),
                                ),
                              ),

                              isDense: true,
                              //errorText: timeError.isNotEmpty ? timeError : null,
                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),

                              suffixIcon: IconButton(
                                icon: Icon(Icons.access_time),
                                iconSize: 22,
                                onPressed: () => _selectTimeRange(context),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
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
                              'Message',
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
                              labelText: 'Message',

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
                                        const SuccessEventAddPage(
                                          inputText: '',
                                        )),
                              );
                            },
                            child: const Text(
                              'Add Event',
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

class TimeRangePickerField extends StatelessWidget {
  final Function(TimeRange)? onTimeRangeSelected;

  const TimeRangePickerField({Key? key, this.onTimeRangeSelected})
      : super(key: key);

  Future<void> _selectTimeRange(BuildContext context) async {
    TimeRange? result = await showTimeRangePicker(
      context: context,
    );
    if (result != null && onTimeRangeSelected != null) {
      onTimeRangeSelected!(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final String newText = newValue.text;
    final String newTextFilterd = newText.replaceAll(
      RegExp(r'[^\d]'),
      '',
    );
    final int selectionIndexFromRight = newText.length - newValue.selection.end;
    int offset = 0;

    final StringBuffer newTextBuffer = StringBuffer();
    for (int i = 0; i < newTextFilterd.length; i++) {
      if (i > 0 && i % 4 == 0) {
        //display 2 spaces in the middle of card number input
        newTextBuffer.write(' // ');
        if (newValue.selection.end >= i + offset) {
          offset++;
        }
      }
      newTextBuffer.write(newTextFilterd[i]);
    }

    return TextEditingValue(
      text: newTextBuffer.toString(),
      selection: TextSelection.collapsed(
        offset: newTextBuffer.length - selectionIndexFromRight,
      ),
    );
  }
}
