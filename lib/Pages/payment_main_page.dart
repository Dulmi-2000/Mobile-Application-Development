import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class PaymentMainPage extends StatelessWidget{
  const PaymentMainPage({super.key});

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
                  height: size.height/13,
                ),
    
    

    
               //text - get paid for nsbm
               const Text("Get paid for NSBM",
               style: TextStyle(
                fontSize: 28,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
    
               ),    
               ),



               
               //space in between text and image
                SizedBox(
                  height: size.height/45,
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

             

                   //space in between text and image
                SizedBox(
                  height: size.height/45,
                ),
    

                      


                      //button for pay now
                      SizedBox(
                        
                        height: size.height/20,
                        width: size.width/1.4,
                    
                        child: ElevatedButton(
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(HexColor("#39B54A")),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                         ),
                        ),
                        ),
                           onPressed:() {
                                      
                            },
                             child: const Padding(
                               padding: EdgeInsets.all(10.0),
                                child: Text('Pay Now',
                                style: TextStyle(
                                 fontSize: 18,
                                 letterSpacing: 0.5,
                                        
                                 ),
                                 ),
                                ),
                                 
                             ),
                          ),



                       


                        

                     //middle space

                      SizedBox(
                        height: size.height/20,
                      ),




                    // button for payment history    
                   Container(
                  height: size.height / 20,
                  width: size.width / 1.4,
                  child: OutlinedButton(
                  style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                 ),
                 ),
                    foregroundColor: MaterialStateProperty.all<Color>(HexColor("#39B54A")),
                  side: MaterialStateProperty.all<BorderSide>(
                BorderSide(
                  color: HexColor("#39B54A"),
                 ),
                  ),
                 ),
                onPressed: () {
                // Button action
                },
                  child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                  'Payments History',
                 style: TextStyle(
                 fontSize: 18,
                letterSpacing: 0.5,
                ),
              ),
             ),
            ),
         )

           
          ],
        ),
      ),
    
                  ],
                )
                )


      );

  }
}