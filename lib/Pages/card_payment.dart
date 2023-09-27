import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/payment_success.dart';
import 'card_validator.dart';

class CardPaymentPage extends StatefulWidget {
  const CardPaymentPage({super.key, required String inputText});

  @override
  State<CardPaymentPage> createState() => _CardPaymentPageState();
}

class _CardPaymentPageState extends State<CardPaymentPage> {
  //text editing controller for textfeilds
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();

//error messages

  String cardNumError = '';
  String expDateError = '';
  String cvcError = '';
  String radioError = '';
  String dateError = '';
  String cardNumLengthError = '';

  String cardNum = '';
  String cardExp = '';
  String cardCVC = '';

  bool hasError = false;

  // Default selected value of radio button
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
//////////////////////////////////////////////////////////////
//// change padding of text feilds

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Payments Details",
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 0.3,
            ),
          ),
        ),
        backgroundColor: HexColor('#39B54A'),

        //to chnge app bar size

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.01),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
          ),
        ),
      ),

      body: SingleChildScrollView(
        // ignore: sized_box_for_whitespace
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Column(
                    children: <Widget>[
                      //space between top and image
                      SizedBox(
                        height: size.height / 65,
                      ),

                      //image
                      Center(
                        child: Image.asset(
                          "assets/pay.png",
                          height: size.height / 2.35,
                          width: size.width / 1.1,
                        ),
                      ),
                    ],
                  ),

                  //space in between image and container
                  SizedBox(
                    height: size.height / 185,
                  ),

                  Column(
                    children: [
                      //space in top of the container
                      SizedBox(
                        height: size.height / 25,
                      ),

                      //large container
                      Container(
                        height: size.height / 2.2,
                        width: size.width / 1.125,

                        //border
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: HexColor("B0B0B0"),
                            )),

                        //large container contents
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              //space in top of the contaier
                              SizedBox(
                                height: size.height / 35,
                              ),

                              //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                              //second container for visa and master radio buttons

                              SizedBox(
                                height: size.height / 20,
                                width: size.width / 1.2,
                                child: Row(
                                  children: [
                                    //visa button
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minHeight: size.height / 20,
                                        minWidth: size.width / 1.2 / 2.058,
                                      ),
                                      child: Container(
                                        height: size.height / 22,
                                        width: size.width / 1.2 / 2.058,
                                        padding: const EdgeInsets.all(1.0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: HexColor("#39B54A"))),
                                        child: RadioListTile(
                                          dense: true,
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          activeColor: HexColor("#39B54A"),
                                          title: Text(
                                            'Visa',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: HexColor("#39B54A"),
                                              letterSpacing: 0.1,
                                            ),
                                          ),
                                          value: 1,
                                          groupValue: selectedValue,

                                          fillColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) =>
                                                      HexColor("#39B54A")),
                                          //onChanged: (value1) => _handleRadioValueChange(value1),
                                          onChanged: (value1) =>
                                              _handleRadioValueChange(value1),
                                        ),
                                      ),
                                    ),

                                    //space between 2 radio buttons
                                    SizedBox(
                                      width: size.width / 45,
                                    ),

                                    //master button
                                    Container(
                                      height: size.height / 20,
                                      width: size.width / 1.2 / 2.058,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: HexColor("#39B54A"))),
                                      child: RadioListTile(
                                        dense: true,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        activeColor: HexColor("#39B54A"),
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2.0),
                                          child: Text(
                                            'Master',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: HexColor("#39B54A"),
                                              letterSpacing: 0.1,
                                            ),
                                          ),
                                        ),
                                        value: 2,
                                        groupValue: selectedValue,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    HexColor("#39B54A")),
                                        onChanged: (value1) =>
                                            _handleRadioValueChange(value1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //middle space in container
                              SizedBox(
                                height: size.height / 25,
                              ),
                              ///////////////////////

                              //card number container

                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: size.height / 35,
                                  maxWidth: size.width / 1.2,
                                ),
                                child: TextFormField(
                                  controller: myController1,
                                  onChanged: (value) {
                                    /////////////////////////////
                                    //doValidationCardNum();
                                    cardNum = value;
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    //number of values in the user input for card number is 22
                                    //16 digits for card number and
                                    ////6 for spaces between 4 digits
                                    LengthLimitingTextInputFormatter(22),

                                    ///////////////////////////////////calling
                                    CardNumberFormatter(),
                                  ],
                                  decoration: InputDecoration(
                                    //contentPadding:  EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                    prefix: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Icon(
                                        Icons.credit_card,
                                        color: Colors.black,
                                      ),
                                    ),

                                    //display text
                                    labelText: 'Card Number',
                                    hintText: "XXXX XXXX XXXX XXXX",
                                    hintStyle: TextStyle(
                                        //text color
                                        color: HexColor("B0B0B0")),

                                    border: OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(5.0),
                                        borderSide: BorderSide(
                                            color: HexColor("B0B0B0"))),

                                    isDense: true,

                                    //error message
                                    errorText: cardNumError.isNotEmpty
                                        ? cardNumError
                                        : null,
                                    /*
                                      errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                           ? cardNumError
                                             : null,
                                     */
                                    errorMaxLines: 1,
                                    errorStyle: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 12.5,
                                    ),
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
                                height: size.height / 40,
                              ),

                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: size.height / 35,
                                  maxWidth: size.width / 1.2,
                                ),
                                child: Row(
                                  children: [
                                    //date of expire container
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minHeight: size.height / 35,
                                        maxWidth: size.width / 1.2 / 1.99,
                                      ),
                                      child: TextField(
                                        controller: myController2,
                                        onChanged: (value) {
                                          /////////////////////////////
                                          doValidationExpDate();
                                          cardExp = value;
                                        },
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          //number of values in the user input for card exp date is 5
                                          //4 digits and 1 for / symbol
                                          LengthLimitingTextInputFormatter(5),

                                          ///////////////////////////////////calling
                                          CardDateFormatter(),
                                        ],
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 12),

                                          //display text
                                          labelText: 'Expired Date',
                                          hintText: 'MM/YY',
                                          hintStyle: TextStyle(
                                            //text color
                                            color: HexColor("B0B0B0"),
                                          ),

                                          border: OutlineInputBorder(
                                              // borderRadius: BorderRadius.circular(5.0),
                                              borderSide: BorderSide(
                                            color: HexColor("B0B0B0"),
                                          )),

                                          //error message
                                          //errorText: hasError ? expDateError : null,
                                          errorText: expDateError.isNotEmpty
                                              ? expDateError
                                              : null,
                                          errorMaxLines: 1,
                                          errorStyle: const TextStyle(
                                            color: Colors.red,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          letterSpacing: 0.3,
                                        ),
                                      ),
                                    ),

                                    //middle space in container
                                    SizedBox(
                                      width: size.width / 40,
                                    ),

                                    //cvc container
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minHeight: size.height / 35,
                                        maxWidth: size.width / 1.2 / 2.15,
                                      ),
                                      child: TextField(
                                        controller: myController3,
                                        onChanged: (value) {
                                          setState(() {
                                            //doValidation();
                                            cardCVC = value;
                                            doValidationCVC();
                                          });
                                        },
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(3),
                                        ],
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 8, horizontal: 12),

                                          //display text
                                          labelText: 'CVC',
                                          hintText: 'XXX',
                                          hintStyle: TextStyle(
                                            //text color
                                            color: HexColor("B0B0B0"),
                                          ),

                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                                color: HexColor("B0B0B0")),
                                          ),

                                          //error message
                                          errorText: cvcError.isNotEmpty
                                              ? cvcError
                                              : null,
                                          //errorText: cvcError.isEmpty ? null : cvcError,

                                          errorMaxLines: 1,
                                          errorStyle: const TextStyle(
                                            color: Colors.red,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          //color: Color.fromARGB(235, 158, 157, 154),
                                          letterSpacing: 0.3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //space between text and the button
                              SizedBox(
                                width: size.width / 1.3,
                                height: size.height / 20,
                              ),

                              //confirm payment button
                              SizedBox(
                                height: size.height / 20,
                                width: size.width / 1.2,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor("#39B54A"),
                                  ),
                                  onPressed: () {
                                    /*                                    
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SuccesfulPaymentPage(inputText: ''),
          ),
        );*/

                                    doValidationCardNum();
                                    doValidation(context);
                                    doValidationExpDate();
                                    doValidationCVC();

                                    //error message
                                    radioError.isNotEmpty ? radioError : null;

                                    const TextStyle(
                                      color: Colors.red,
                                      fontSize: 12.5,
                                    );
                                  },
                                  child: const Text(
                                    'Confirm Payment',
                                    style: TextStyle(
                                      fontSize: 17,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleRadioValueChange(int? value1) {
    setState(() {
      selectedValue = value1!;
    });
  }

  bool isDateExpired(DateTime inputDate) {
    // Get the current date and time
    DateTime currentDate = DateTime.now();

    // Compare the inputDate with the current date
    return inputDate.isBefore(currentDate);
  }

//card number validation

  void doValidationCardNum() {
    String cardNum = myController1.text.trim();

    cardNumError = cardNum.isNotEmpty ? '' : 'Please enter a Card Number.';

    //if empty
    //
    /* 
        if (cardNum.isNotEmpty) {
        setState(() {
        cardNumError = '';
        });
      }
      */

    if (cardNum.isEmpty) {
      setState(() {
        cardNumError = 'Please enter a valid Card Number.';
      });
    }
    //if not empty
    /*  else if(cardNum.isNotEmpty){
        setState(() {
          cardNumError='';
        });
      }
    else if(cardNum.length>1 || cardNum.length==16){
       setState(() {
          cardNumError='';
        });
    }*/
    else if (cardNum.length < 16) {
      setState(() {
        cardNumError = 'Card Number is invalid!.';
      });
    }
  }

  //date validation
  void doValidationExpDate() {
    //DateTime givenDate = DateTime.now();

    String cardExp = myController2.text.trim();

    //if empty
    if (cardExp.isEmpty) {
      setState(() {
        hasError = true;
        expDateError = 'Enter the Expire Date.';
      });
    }
  }

  doValidationCVC() {
    if (cardCVC.isEmpty) {
      setState(() {
        cvcError = ' Enter the CVC.';
      });
    }
  }

  void doValidationRadio() {
    //Display an error message for the radio button

    if (selectedValue == 0) {
      setState(() {
        radioError = 'Please select Visa/Master';
      });
    }
  }

  void doValidation(BuildContext context) {
    // Check if all fields are valid and navigate
    if (cardNum.isNotEmpty && cardExp.isNotEmpty && cardCVC.isNotEmpty) {
      if (selectedValue == 1 || selectedValue == 2) {
        //DateTime givenDate = DateTime.parse(cardExp);
        //if (!isDateExpired(givenDate)) {
        // Navigate to the SuccesfulPaymentPage with the inputText

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SuccesfulPaymentPage(inputText: ''),
          ),
        );
        //  }
      }
    }
  }
}

/*
void _handleRadioValueChange(int? value1) {
    setState(() {
      selectedValue = value1!;
    });
  }


  
  bool isDateExpired(DateTime inputDate) {
  // Get the current date and time
  DateTime currentDate = DateTime.now();
  
  // Compare the inputDate with the current date
  return inputDate.isBefore(currentDate);
}



//validation of user inputs
void doValidation() {
  String cardNum = myController1.text.trim();
  String cardExp = myController2.text.trim();
  String cardCVC = myController3.text.trim();
  

  if (cardNum.isNotEmpty && cardExp.isNotEmpty && cardCVC.isNotEmpty) {
    // Check if selectedValue is either 1 or 2
    if (selectedValue == 1 || selectedValue == 2) {
      // Both radio and text fields are valid
      // Navigate to the SuccesfulPaymentPage
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SuccesfulPaymentPage(inputText: ''),
        ),
      );
    } else {
      // Display an error message for the radio button
      setState(() {
        radioError = 'Please select Visa/Master';
      });
    }
  } else {
    
      //if not empty

        if (cardNum.isNotEmpty) {
        setState(() {
        cardNumError = '';
        });
      }
        if (cardExp.isNotEmpty) {
        setState(() {
        expDateError = '';
        });
      }
       if (cardCVC.isNotEmpty) {
        setState(() {
        cvcError = '';
        });
      }
      


        //if empty
        // Display error text for missing input fields
    
      if (cardNum.isEmpty) {
        setState(() {
        cardNumError = 'Please enter a Card Number.';
        });
      }


      if (cardExp.isEmpty) {
        setState(() {
        hasError=true;
        expDateError = 'Enter the Expire Date.';
        });
       
      }
      if (cardCVC.isEmpty) {
        setState(() {
        cvcError = ' Enter the CVC.';
        });
        
      }
      
      DateTime givenDate = DateTime.now();
  
  if (isDateExpired(givenDate)) {
    setState(() {
        hasError=true;
      expDateError = 'The given date is expired.';
        });
    
  }

  // ignore: unnecessary_null_comparison
  if(expDateError!=null || dateError!=null){
    setState(() {
         hasError=false;
        });
   
  }
  
  else{
    setState(() {
            hasError=true;
        });

  }
  
  
  
}

}*/
