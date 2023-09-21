import 'package:flutter/services.dart';


class CardDateFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, 
    TextEditingValue newValue,
    )
     {
      final String newText=newValue.text;
      final String newTextFilterd=newText.replaceAll(
        RegExp(r'[^\d]'),'',
      );
      final int selectionIndexFromRight=newText.length-newValue.selection.end;
      int offset=0;

      final StringBuffer newTextBuffer=StringBuffer();
      for(int i=0; i<newTextFilterd.length; i++){
        if(i>0 && i % 2==0){

          //display the middle / in date input
          newTextBuffer.write('/');
          if(newValue.selection.end>=i+offset){
            offset++;
          }
        }
        newTextBuffer.write(newTextFilterd[i]);
      }

      return TextEditingValue(
        text: newTextBuffer.toString(),
        selection: TextSelection.collapsed(
          offset: newTextBuffer.length-selectionIndexFromRight,
          ),
      );
   
  }

}




class CardNumberFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, 
    TextEditingValue newValue,
    )
     {
      final String newText=newValue.text;
      final String newTextFilterd=newText.replaceAll(
        RegExp(r'[^\d]'),'',
      );
      final int selectionIndexFromRight=newText.length-newValue.selection.end;
      int offset=0;

      final StringBuffer newTextBuffer=StringBuffer();
      for(int i=0; i<newTextFilterd.length; i++){
        if(i>0 && i % 4==0){

          //display 2 spaces in the middle of card number input
          newTextBuffer.write('  ');
          if(newValue.selection.end>=i+offset){
            offset++;
          }
        }
        newTextBuffer.write(newTextFilterd[i]);
      }

      return TextEditingValue(
        text: newTextBuffer.toString(),
        selection: TextSelection.collapsed(
          offset: newTextBuffer.length-selectionIndexFromRight,
          ),
      );
   
  }

  
  

}


