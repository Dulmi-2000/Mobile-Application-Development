import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InlineDatePicker extends StatefulWidget {
  @override
  _InlineDatePickerState createState() => _InlineDatePickerState();
}

class _InlineDatePickerState extends State<InlineDatePicker> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {

    DateTime? picked = await showDatePicker(

      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),

      builder: (
        BuildContext context, Widget? child) {

        return Theme(

          data: ThemeData.light().copyWith(
            // calendar color
            primaryColor: HexColor('#39B54A'), 
            hintColor: HexColor('#39B54A'),
            colorScheme: ColorScheme.light(primary: HexColor('#39B54A'),),
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

    return ConstrainedBox(

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

          decoration: InputDecoration(
          hintText: 'Select a date',
          border: OutlineInputBorder(
          
          
            // borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
            color: HexColor("B0B0B0")
         )
             ),
                                
          
         
          suffixIcon: IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () => _selectDate(context),

          ),
        ),
      ),
    );
  }
}