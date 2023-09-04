import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/card_paymnet.dart';

class PaymentFirstPage extends StatefulWidget{
  const PaymentFirstPage({super.key});

  @override
  State<PaymentFirstPage> createState() => _PaymentFirstPageState();
}

class _PaymentFirstPageState extends State<PaymentFirstPage> {

    //text editing controller for textbox
  //final myController = TextEditingController();
  TextEditingController myController = TextEditingController();



  //first value for the dropdownlist
  String dropdownvalue="Fee Type";


  //list of items for the dropdown list
  var items=["Gym Fees","Club Fees","Pool"];
  


//error messages
String dropdownError = '';
  String amountError = '';




  @override
  Widget build(BuildContext context){

    Size size=MediaQuery.of(context).size;

    return Scaffold(



           appBar: AppBar(


          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Payment",
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 0.3,
            ),
            ),
          ),
          backgroundColor: HexColor('#39B54A'),



          //to chnge app bar size

           bottom:  const PreferredSize( 
            preferredSize: Size.fromHeight(0.01), 
            child: Padding(padding: EdgeInsets.only(left: 15),
            ),
            ),
        ),


    
      //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    
    
    
      body: Center(
        child: Column(
    
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
    
    
            Expanded(
              flex: 2,
              child: Column(
    
               children: [
    
    
    
               //space in top
                SizedBox(
                  height: size.height/45,
                ),
    
    
    
    
                //text- pay here
                const Text("Pay Here",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
                ),
    
    
        
               //space between 2 texts
                SizedBox(
                  height: size.height/80,    
                ),
    
    
    
               //text - get paid for nsbm
               const Text("Get paid for NSBM",
               style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,
    
               ),    
               ),


               
               //space between text and image
            /*    SizedBox(
                  height: size.height/500,    
                ),
    */
              
    
               //image
                Image.asset("pay.png",
                height: size.height/2.2,
                width: size.width/1.2,
                ),
    
              
               ],
    
              ),
              ),

                  
              //space between image and dropdown list
             SizedBox(
              height: size.height/5200,
              width: size.width/3,
              ),

    
    
               Expanded(
                flex: 1,
                child: Column(
                  children: [
            
    
    
             //constrained box for dropdown list


             //this will avoid that the change of the textfeild 
             //when error text is displaying
            ConstrainedBox(
    
    
              //dropdown button
              constraints: BoxConstraints(
               //height and width of the list

               //minimum height of the textfeild
               minHeight: size.height/20,
               //maximum width of the text feild
               maxWidth: size.width/1.2,





              ),



              child: DropdownButtonFormField2<String>(
                
    
                isDense: true,
            
                isExpanded: true,//isExpanded → bool
                                //Set the dropdown's inner contents to horizontally fill its parent.
                  
                  decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                 
                   //border 
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
    
                    borderSide: BorderSide(
                    color: HexColor('#39B54A'),
    
                    ),
                   
                  ),
                               

                               
                        //error messsage
                         errorText: dropdownError.isNotEmpty ? dropdownError : null,
    


                ),
                        

    
    
                  //text to display in the top of the list - fee type text
                hint: Text(
                  'Fee Type',
                  style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: HexColor('#39B54A'),
                  
    
                  ),
                ),
                
    
                    //item list
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
    
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: HexColor('#39B54A'),
                           
                            ),
                          ),
                          
                        ))
                    .toList(),
               
                  onChanged: (value) {


                  //Do something when selected item is changed.
                        setState(() {
                          dropdownvalue = value!;
                          dropdownError = ''; // Clear the error when a selection is made
                        
                        }
                        );

                },
                  onSaved: (value) {
                  value = value.toString();
                },
    
    
    
                  buttonStyleData:  const ButtonStyleData(
                  padding: EdgeInsets.only(right: 10,left: 1),
                  //height: 20,
                  
                ),
            
            
            
                  //arrow icon
                iconStyleData: IconStyleData(
                  icon: Icon(
                EvaIcons.arrowIosDownward,
                    color: HexColor('#39B54A'),
                  ),
                  iconSize: 30,
                  
                ),
    
    
    
            
            
              //style of dropdown list
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    
                  ),
                ),
    
    
                //dropdown list items
                menuItemStyleData:  const MenuItemStyleData(
             
                
                padding: EdgeInsets.symmetric(horizontal: 10),
             
              // padding: EdgeInsets.only(right: 10,left: 10),
                ),
              ),
            ),
    
    
    
    
    
    
                  //space between list and amount box
                  SizedBox(
                    height: size.height/40,
                    ),
          
                
    
    
    
                //amount of the payment
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: size.height/20,
                                maxWidth: size.width/1.2
                              ),


                              child: TextField(
                                                  
                                controller: myController,
                            
                            
                                
                                 keyboardType: TextInputType.number,
                              
                                decoration: InputDecoration(
                            
                                  contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                         
                                                  
                                  //display text
                                        hintText:"Amount (LKR)",
                            
                            
                            
                                        hintStyle: TextStyle(
                                         color: HexColor('#39B54A')
                                        ),
                                        
                                        
                                        border: const OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: Colors.black26,
                                          )
                                        ),
                                        
                                         
                            
                            
                            
                            
                                         //error message
                            
                                         
                                    errorText: amountError.isNotEmpty ? amountError : null,
                                    errorMaxLines: 1,
                                    errorStyle: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 13,
                                    
                            
                            
                            
                                   
                                  ),
                            
                            
                            
                                     ),
                               
                                style: TextStyle(
                                                  
                                fontSize: 16,
                                 color: HexColor('#39B54A'),
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                                                 
                                
                              ),
                                                         ),
                            ),
                          
                             
    
    
                         //space between amount box continue button 
                        SizedBox(
                          height: size.height/25
                          ),
    
    
    

                   //continue button

                    SizedBox(
                      height: size.height/20,
                      width: size.width/1.2,
                             
                      
                             
                       child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                       backgroundColor: HexColor("#39B54A"),
                     ),

                    onPressed:() {


                   // doValidation(BuildContext);

                    
                  
                   doValidation();
                        
                   

                    },
                      
                      
                     child: const Text('Continue',
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
    
                  ],
                )
                )


      );



      

  }

//validation of user inputs

void doValidation() {
    String userAmount = myController.text.trim();
    if (dropdownvalue != "Fee Type" && userAmount.isNotEmpty) {
      try {



        
        int parsedAmount = int.parse(userAmount);


             if(parsedAmount<100)
          {
             setState(() {
            amountError = 'Minimum amount for $dropdownvalue is Rs.100';
          });
          }


        else if(parsedAmount > 100) {
          // Both dropdown and text field are valid
          
          
          // Navigate to the CardPaymentPage
         
            Navigator.push(context,
           MaterialPageRoute(builder: (context) =>  const CardPaymentPage(inputText: '',),
          


            ),
          );

     


        } else {
          // Display an error text for invalid input
          setState(() {
            amountError = 'Please enter a valid positive integer for Amount.';
          });
        }


      } catch (e) {
        // Handle invalid input (e.g., non-numeric input)
        setState(() {
          amountError = 'Please enter a valid integer for Amount.';
        });
      }



    } else {
      // Display error text for missing input
      setState(() {


        if (dropdownvalue == "Fee Type") {
          dropdownError = 'Please select a Fee Type.';
        }


        if (userAmount.isEmpty) {
          amountError = 'Please enter an Amount.';
        }

      


      }
      );
    }
  }
}



/*
  void doValidation(BuildContext)
  {
    userAmount=myController.text;
    userAmount=int.parse(amount as String) as String;

    if(userAmount.isNotEmpty)
    {
         Navigator.push(context,
         MaterialPageRoute(builder: (context) =>  const CardPaymentPage()),);

    }

    else{
     
    }
  }

  */
 
