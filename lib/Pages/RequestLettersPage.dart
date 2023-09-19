import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'DatePicker.dart';


class RequestLettersPage extends StatefulWidget{
  const RequestLettersPage({super.key});

  @override
  State<RequestLettersPage> createState() => _RequestLettersPageState();
}

class _RequestLettersPageState extends State<RequestLettersPage> {
  @override
  Widget build(BuildContext context){

    Size size=MediaQuery.of(context).size; 


              //text editing controller for textfeilds
  TextEditingController IdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController reasonController = TextEditingController();



String idError = '';
String nameError = '';
String dateError = '';
String reasonError = '';


String  id='';
String  name='';
String  date='';
String  reason='';


    return Scaffold(
          
          //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        appBar: AppBar(


          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Proof Letter Request",
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
      


      body:Container(

        child: Column(
            
           children: [

            
              //space in the top of the page
              SizedBox(
                height: size.height/35,
              ),



            Center(
              
              child: Container(
                

            
                height: size.height/1.2,
                width: size.width/1.125,
                      
                     
                decoration: BoxDecoration(
                color: Color.fromARGB(35, 50, 52, 54),  // Fill color
                

                border: Border.all(
                color: Color.fromARGB(255, 121, 99, 98),  // Border color
                width: 0.5,         // Border width
               
                ),
                borderRadius: BorderRadius.circular(6),  // Border radius
              ),
                



                 child: Column(

                  children: [

                        

                          //middle space in container
                               SizedBox(
                                  height: size.height/40,
                                ),
                                  


                    
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text('Student ID',
                          style: TextStyle(
                                                     
                                       fontSize: 16,
                                        color: Colors.black,
                                       //color: Color.fromARGB(235, 158, 157, 154),
                                       letterSpacing: 0.3,
                                       
                                       
                                       
                                     ),),
                        ),
                      ),




                    ConstrainedBox(
                                
                        constraints: BoxConstraints(
                        minHeight: size.height/35,
                         maxWidth: size.width/1.2,
                        ),


                



                               //id feild
                                child: TextFormField(
                                                
                                  controller: IdController,
                                     
                                     onChanged: (value) {
                                    /////////////////////////////
                                    //doValidationCardNum();
                                    id=value;
                                  },
                                  
                                    
                                    
                                   keyboardType: TextInputType.number,
                                   
                                 
                                
                                  decoration: InputDecoration(
                 
                                
                                                
                                    //display text
                                          labelText: 'Student ID',
                                          
                                          hintStyle: TextStyle(
                                            //text color
                                         color: HexColor("B0B0B0")
                                          ),
                                          
                                          
                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: HexColor("B0B0B0")
                                            )
                                          ),
                                
                                          isDense: true,
                                
                                
                                          
                                
                                      //error message
                                  errorText: idError.isNotEmpty ? idError : null,
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
                                  height: size.height/40,
                                ),
                                  





                              //////student name
                              ConstrainedBox(
                                
                                constraints: BoxConstraints(
                                    minHeight: size.height/35,
                                    maxWidth: size.width/1.2,
                               ),
                                                
                               
                                child: TextFormField(
                                                
                                  controller: nameController,

                                  onChanged: (value) {
                                    /////////////////////////////
                                    //doValidationCardNum();
                                    name=value;
                                  },
                                  
                                    
                                   keyboardType: TextInputType.text,
                                   
                 
                                
                                   decoration: InputDecoration(
                                
                                    
                                                
                                    //display text
                                          labelText: 'Student Name',
                          
                                          hintStyle: TextStyle(
                                            //text color
                                         color: HexColor("B0B0B0")
                                          ),
                                          
                                          
                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: HexColor("B0B0B0")
                                            )
                                          ),
                                
                                          isDense: true,
                                
                                
                                          
                                
                                      //error message
                                     errorText: nameError.isNotEmpty ? nameError : null,
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
                                  height: size.height/40,
                                ),
                                  





                              ///reason feild
                              ConstrainedBox(
                                
                                constraints: BoxConstraints(
                                    minHeight: size.height/35,
                                    maxWidth: size.width/1.2,
                               ),
                                                
                               
                                child: TextFormField(
                                                
                                  controller: reasonController,

                                  
                                  onChanged: (value) {
                                    /////////////////////////////
                                    //doValidationCardNum();
                                    reason=value;
                                  },
                                    
                                    maxLines: null,

                                  decoration: InputDecoration(
                                
                                  
                                                
                                    //display text
                                          labelText: 'Reason',
                                         
                                          hintStyle: TextStyle(
                                            //text color
                                         color: HexColor("B0B0B0")
                                          ),
                                          
                                          
                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: HexColor("B0B0B0")
                                            )
                                          ),
                                
                                          isDense: true,
                                
                                
                                          
                                
                                      //error message
                                     errorText: reasonError.isNotEmpty ? reasonError : null,
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
                                  height: size.height/40,
                                ),
                                  





                              ///date 
                                                                
                            Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: InlineDatePicker(),
                                ),



                             /* ConstrainedBox(
                                
                                constraints: BoxConstraints(
                                    minHeight: size.height/35,
                                    maxWidth: size.width/1.2,
                               ),
                                                
                               
                                child: TextFormField(
                                                
                                  controller: dateController,

                                  onChanged: (value) {
                                    /////////////////////////////
                                    //doValidationCardNum();
                                    date=value;
                                  },
                                  
                                    
                                   keyboardType: TextInputType.datetime,
                                   
                                
                                   
                                
                                  decoration: InputDecoration(
                                
                                    
                                
                                                
                                    //display text
                                          labelText: 'Date',
                                     
                                          hintStyle: TextStyle(
                                            //text color
                                         color: HexColor("B0B0B0")
                                          ),
                                          
                                          
                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: HexColor("B0B0B0")
                                            )
                                          ),
                                
                                          isDense: true,
                                
                                
                                          
                                
                                      //error message
                                     errorText: dateError.isNotEmpty ? dateError : null,
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


                                   
*/


                                   
                               //middle space in container
                               SizedBox(
                                  height: size.height/20,
                                ),
      
                           
                               ///buttton for submit
                                //confirm payment button
                               SizedBox(
                                 height: size.height/20,
                                 width: size.width/1.2,
                               
                                                
                               
                                             child: ElevatedButton(
                                             style: ElevatedButton.styleFrom(
                                             backgroundColor: HexColor("#39B54A"),
                                            ),
                                              onPressed:() {
                                              
                                             
                              
                                      
                                      const TextStyle(
                                      color: Colors.red,
                                      fontSize: 12.5,    
                                    );
                                         
                                           
                                          },
                                
                                                
                                            
                                                
                                                
                                               child: const Text('Submit',
                                               style: TextStyle(
                                                fontSize: 17,
                                                letterSpacing: 0.3,
                                
                                                
                                              ),
                                                 ),      
                                                ),
                                               ),
                                

                              /////
                              /*
                            ConstrainedBox(
                                
                                constraints: BoxConstraints(
                                    minHeight: size.height/35,
                                    maxWidth: size.width/1.2,
                               ),
                                                
                               
                                child: TextFormField(
                                                
                                  controller: myController1,

                                  onChanged: (value) {
                                    /////////////////////////////
                                    //doValidationCardNum();
                                    cardNum=value;
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
                                      padding: EdgeInsets.symmetric(horizontal: 15),
                                      
                                      
                                     child: Icon(Icons.credit_card,
                                     color: Colors.black,),
                                     ),
                                     
                                
                                                
                                    //display text
                                          labelText: 'Card Number',
                                          hintText:"XXXX XXXX XXXX XXXX",
                                          hintStyle: TextStyle(
                                            //text color
                                         color: HexColor("B0B0B0")
                                          ),
                                          
                                          
                                          border: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: HexColor("B0B0B0")
                                            )
                                          ),
                                
                                          isDense: true,
                                
                                
                                          
                                
                                      //error message
                                     errorText: cardNumError.isNotEmpty ? cardNumError : null,
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
                              */

                              
                  ],
                
                 
                  
                ),
           
              



              ),
            )
           ],

        ),
      ) ,

    );
  }
}