import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class CardPaymentPage extends StatefulWidget{
  const CardPaymentPage({super.key});

  @override
  State<CardPaymentPage> createState() => _CardPaymentPageState();
}


class _CardPaymentPageState extends State<CardPaymentPage> {
          
          //text editing controller for textbox
  //final myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();


 final _formKey = GlobalKey<FormState>();
  

  // Default selected value of radio button
  int selectedValue = 0; 

  @override
  Widget build(BuildContext context)
  {


//////////////////////////////////////////////////////////////
//// change padding of text feilds
   
   
    Size size=MediaQuery.of(context).size;

     return Scaffold(


     

      //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      body: SingleChildScrollView(

        // ignore: sized_box_for_whitespace
        child: Container(

          width: double.infinity,
          height: size.height,

          child: Center(
            child: Column(
            
              //mainAxisAlignment: MainAxisAlignment.center,
               
             children: [
            
              Expanded(
                flex:2,
            
                child: Column(
            
                  children: <Widget>[
            
                  

                  //space between top and image
                   SizedBox(
                         height: size.height/15,
                    ),
            
            
            
            
               //image
               Center(
                 child: Image.asset("Workout.png",
                     
                      height: size.height/2.308,
                      width: size.width/1.1,
                      
                      ),
               ), 
           
               
               ],
                  
                )
                ),
            
            
            
            
            
            
            
            
                Expanded(
            
                  flex: 2,
            
                  child:Column(
                      
                    children: [
                      
                      
                      //space in top of the container
                      SizedBox(
                        height: size.height/25,
                      ),
                      
                                  
                      
                      
                      
                      
                      
                      //large container
                      Container(
                      
                           height: size.height/2.4,
                           width: size.width/1.125,
                      
                      //border
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                        color: HexColor("B0B0B0")
                      
                    
                      
                      )
                       ),
                      
                      

                    
                         //large container contents
                        child: Column(
                          children: [
                      
                      
                              //space in top of the contaier
                              SizedBox(
                                height: size.height/25,
                              ),
                                 








                      
                              
                      //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                            //second container for visa and master radio buttons

                                SizedBox(


                                   height: size.height/22,
                                   width: size.width/1.2,


                                   child: Row(
                                    
                                    children: [
                                      
                                  
                                  
                                      //visa button
                                    Container(
                                                       
                                   height: size.height/22,
                                   width: size.width/1.2/2.058,
                                    padding: const EdgeInsets.all(1.0),
                                                       
                                    decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    color: HexColor("#39B54A")
                                     )
                                    ),
                                    
                                           child: RadioListTile(
                                              dense: true,
                                              controlAffinity: ListTileControlAffinity.leading,
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
                                               fillColor: MaterialStateColor.resolveWith((states) => HexColor("#39B54A")),
                                               onChanged: (value1) => _handleRadioValueChange(value1),
                                        ),

                                    ),  







                                       //space between 2 radio buttons
                                      SizedBox(
                                        width: size.width/45,
                                      ),

                                          




                                          //master button
                                    Container(
                                                       
                                       height: size.height/22,
                                      width: size.width/1.2/2.058,
                                                       
                                    decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    color: HexColor("#39B54A")
                                     )
                                    ),
                                    child: RadioListTile(
                                              dense: true,
                                              controlAffinity: ListTileControlAffinity.leading,
                                              activeColor: HexColor("#39B54A"),
                                              title: Padding(
                                                padding: const EdgeInsets.only(left:2.0),
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
                                               fillColor: MaterialStateColor.resolveWith((states) => HexColor("#39B54A")),
                                               onChanged: (value1) => _handleRadioValueChange(value1),
                                             ),
                                    
                                    ),                                 

                                    ],
                                   ),

                                ),

                                 


                      
                      
                             //middle space in container
                             SizedBox(
                                height: size.height/25,
                              ),
                      ///////////////////////
                      
                      
                      
                      
                              //card number container
                                           
                            SizedBox(
                      
                              height: size.height/20,
                              width: size.width/1.2,
                     
                              child: TextFormField(
                      
                                controller: myController1,
    
                                 keyboardType: TextInputType.number,
                              
                                decoration: InputDecoration(

                                  contentPadding:  EdgeInsets.symmetric(vertical: 8,horizontal: 12),
             
                      
                                  //display text
                                        hintText:"Card Number",
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
                      
                      
                      




                            //date of expire container
                           SizedBox(
                            height: size.height/20,
                              width: size.width/1.2,
                             child: Row(
                               children: [
                                 SizedBox(
                                                 
                                    height: size.height/20,
                                    width: size.width/1.2/2.065,
                                                
                                    child: TextField(
                                                 
                                      controller: myController2,
                               
                                       keyboardType: TextInputType.datetime,
                                    
                                      decoration: InputDecoration(
                                         
                                        contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                        
                                                 
                                        //display text
                                              hintText:"Date of Expire",
                                              hintStyle: TextStyle(
                                                //text color
                                             color: HexColor("B0B0B0")
                                              ),
                                              
                                              
                                              border:  OutlineInputBorder(
                                                // borderRadius: BorderRadius.circular(5.0),
                                                borderSide: BorderSide(
                                                  color: HexColor("B0B0B0")
                                                )
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
                                  width: size.width/40,
                                ),
                                                 
                                                 
                                                 
                                                 
                                                 
                                                 
                              //cvc container
                              SizedBox(
                                                 
                                height: size.height/20,
                                width: size.width/1.2/2.065,
                                                
                                child: TextField(
                                                 
                                  controller: myController3,
                               
                                   keyboardType: TextInputType.number,
                                
                                  decoration: InputDecoration(
                           
                                    contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                                        
                                                 
                                    //display text
                                          hintText:"CVC",
                                          hintStyle: TextStyle(
                                            //text color
                                        color: HexColor("B0B0B0")
                                          ),
                                          
                                          
                                          border:  OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: HexColor("B0B0B0")
                                            )
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
                            width: size.width/1.3,
                           height: size.height/13,
                          ),
                      
                      


                      
                      
                             //confirm payment button
                             SizedBox(
                               height: size.height/20,
                              width: size.width/1.2,
                             
                      
                             
                   child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   backgroundColor: HexColor("#39B54A"),
                  ),
                    onPressed:() {
                      
                    

                         if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }

                      
                    },
                      
                      
                     child: const Text('Confirm Payment',
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
                ), 
               ),    
             ],
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




}



