import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SuccesfulPaymentPage extends StatelessWidget{
  const SuccesfulPaymentPage({super.key});

  @override
  Widget build(BuildContext context){

Size size=MediaQuery.of(context).size; 

return Scaffold(
    body: Container(

      //height and width for the page
      height: double.infinity,
      width: double.infinity,

      color: HexColor("#39B54A"),
     
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
               
             children: [
          
          //space between top and image
          SizedBox(
            height: size.height/22,
          ),
          
            
        
        
               //right icon 
              const SizedBox(
                 child: Icon(
                        EvaIcons.checkmarkCircle2Outline, // Choose the Eva Icon you want
                        color: Colors.white,
                        size: 250, // Adjust the size as needed
                      ),
              ),
            
            
        
        
             //space between icon and text
             SizedBox(
             height: size.height/45,
          ),
        
        
        
        
          const Text("Your Payment has been Successful.",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: Colors.white,
          ),
          ),
        
        
              //space between 2 texts
             SizedBox(
             height: size.height/50,
          ),
        
        
             


             //texts
        
             const SizedBox(
             
               child: Text("Thank you for your payment.",
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                color: Colors.white,
                
                     ),
                    
                   ),
             ),
        
        
        
             const Center(
               child: SizedBox(
            
                 child: Text("Enjoy your fitness journey.",
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  color: Colors.white,
                  
                       ),
                      
                     ),
               ),
             ),
        
             
        
        
          
          //space between text and button
           SizedBox(
            height: size.height/8,
          ),
          
          //color: HexColor("#39B54A"),
            
            
            
          
            
          //continue button
          SizedBox(
            width: size.width/1.2,
            height: size.height/21,
            
            child: ElevatedButton(
              onPressed:() {
                
              },
          
              style: ElevatedButton.styleFrom(
               backgroundColor: Colors.white
               ),
          
               child: Text("Continue",
               style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: HexColor("#39B54A"),
             
               
               ),
              )
            ),
          ),
           
          
               ],
           
          ),
        ),
      ),
  
     );
  }
}