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

           //text editing controller for textbox
  //final myController = TextEditingController();
  TextEditingController myController = TextEditingController();



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
                Image.asset("assets/pay.png",
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
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                 
                   //border 
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
    
                    borderSide: BorderSide(
                    color: HexColor('#39B54A'),
    
                    ),
                   
                  ),
                  // Add more decorations..
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
    
    
    
            
            
              //style of dropdown list
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    
                  ),
                ),
    
    
                //dropdown list items
                menuItemStyleData:  const MenuItemStyleData(
             
                
                padding: EdgeInsets.symmetric(horizontal: 16),
             
              // padding: EdgeInsets.only(right: 10,left: 10),
                ),
              ),
            ),
    
    
    
    
    
    
                  //space between list and amount box
                  SizedBox(height: size.height/400),
          
                
    
    
    
                //amount of the payment
                            SizedBox(
                      
                              height: size.height/20,
                              width: size.width/1.2,
                     
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
                                        
                                     ),
                               
                                style: TextStyle(
                      
                                fontSize: 16,
                                 color: HexColor('#39B54A'),
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                                
                               
                                
                              ),),
                             
                            ),
                          
                             
    
    
                         //space between amount box cancel button 
                        SizedBox(height: size.height/20),
    
    
    
    
    
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
}