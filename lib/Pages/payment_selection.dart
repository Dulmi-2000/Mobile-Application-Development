import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class PaymentFirstPage extends StatefulWidget{
  const PaymentFirstPage({super.key});

  @override
  State<PaymentFirstPage> createState() => _PaymentFirstPageState();
}

class _PaymentFirstPageState extends State<PaymentFirstPage> {

  //first value for the dropdownlist
  String dropdownvalue="Fee Type";


  //list of items for the dropdown list
  var items=["Fee Type","Gym Fees","Club Fees","Pool"];
  

  @override
  Widget build(BuildContext context){

    Size size=MediaQuery.of(context).size;

    return Scaffold(

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
                  height: size.height/15,
                ),




                //text- pay here
                const Text("Pay Here",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
                ),




               //space between 2 texts
                SizedBox(
                  height: size.height/40,    
                ),



               //text - get paid for nsbm
               const Text("Get paid for NSBM",
               style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.5,

               ),    
               ),

              

               //image
                Image.asset("pay.png",
                height: size.height/2.078,
                width: size.width/1.2,
                ),

              
               ],

              ),
              ),


               Expanded(
                flex: 1,
                child: Column(
                  children: [

                    //textfeild for fee type
                    /*SizedBox(
                      height: size.height/20,
                      width: size.width/1.2,

                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              //color: HexColor("#39B54A"),
                            ),
          
                          ),
                          labelText: "Fee Type",    
                        ),

                      ),
                    ),*/
          /*  SizedBox(
              height: size.height/100,
            ),

             //dropdown list of fees
            SizedBox(
               height: size.height/20,
                      width: size.width/1.2,
                      

              child: DropdownButton(

                
               

                borderRadius: BorderRadius.circular(7),
                //text 
                style: TextStyle(color: HexColor("#39B54A"),
                fontSize: 20,
                ),

                
                value: dropdownvalue,
                //icon of down arrow
                icon: const Icon(Icons.keyboard_arrow_down,
                ),

                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );

                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) { 
                  setState(() {
                    dropdownvalue = newValue!;
                  });

                }
                
                ),
            )*/



              //space between image and dropdown list
             SizedBox(
              height: size.height/250,
              width: size.width/3,
              ),








             //sized box for dropdown list
            SizedBox(

              //height and with of the list
            height: size.height/12,
              width: size.width/1.2,
              



              //dropdown button
              child: DropdownButtonFormField2<String>(
                
    
                isDense: true,
            
                isExpanded: true,//isExpanded → bool
                                //Set the dropdown's inner contents to horizontally fill its parent.
                  
                  decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                 
                   //border 
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),

                    borderSide: BorderSide(
                    color: HexColor('#39B54A'),

                    ),
                   
                  ),
                  // Add more decoration..
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

                /*
                 IconButton(
      // Use the EvaIcons class for the IconData
      icon: Icon(EvaIcons.arrowIosDownward), onPressed: () {  },
                    ),
                */



            
            
            //style of dropdown list
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),


                //dropdown list items
                menuItemStyleData:  const MenuItemStyleData(
                
                
             padding: EdgeInsets.symmetric(horizontal: 16),
             
              // padding: EdgeInsets.only(right: 10,left: 10),
                ),
              ),
            ),






                  //space between list and button
            SizedBox(height: size.height/35),
          


             //continue button
             SizedBox(
              width: size.width/1.2,
              height: size.height/21,
             
               child: ElevatedButton(
               style: ElevatedButton.styleFrom(
               backgroundColor: HexColor("#39B54A"),
              ),
                onPressed:() {
                  
                },
                 child: const Text('Continue',
                 style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  
                 ),),
             
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
}