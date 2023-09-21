import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class LetterProfile extends StatelessWidget {
  const LetterProfile({Key? key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(

          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("My Requested Letters",
            style: TextStyle(
              fontSize: 20,
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




       //main container
      body: Container(
        
        child: Column(
          children: [


            SizedBox(
              height: size.height/100,
            ),


            Container(
              width: size.width,
              height: size.height/3.3,
      
      
             // Brown color for the outer container
              padding: const EdgeInsets.all(16.0),
      
              child: Container(

                  decoration: BoxDecoration(
                  color: const Color.fromARGB(33, 164, 165, 167),
                  borderRadius: BorderRadius.circular(10),
      
      
                    border: Border.all(
                    color: const Color.fromARGB(157, 121, 99, 98),
                    width: 0.5,
                    
                  ),
                ),
      
      
      
      
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
      
                    children: [
      
                      Row(
                        children: [
      
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
      
                              height: size.height/25,
                              width: size.width/4,
                          
                              decoration: BoxDecoration(
                              color: HexColor("#39B54A"),
                              borderRadius: BorderRadius.circular(10.0), // Adjust the radius d
                              ),
                               
      
                               child: const Padding(
                                 padding: EdgeInsets.all(3.0),
                                 child: Align(
                                  alignment: Alignment.center,
                                   child: Text("Requested",
                                   style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                   ),),
                                 ),
                               ),
                              
                            ),
                          ),
                         
                          
                        ],
                      ),
      
      
      
                    //middle space
                      SizedBox(
                        height: size.height/30,
                      ),
      
      
      
      
       Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline, // Align children at the baseline
              textBaseline: TextBaseline.alphabetic, // Use the alphabetic baseline
             
              children: [
      
            Expanded(
              flex: 1,
      
              child: Container(

                height: size.height / 25,
                width: size.width / 1.2,
                child: const Text(
                  "Requested On",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
      
              ),
      
            ),
      
      
      
      
            SizedBox(
              width: size.width / 10,
            ),
      



            Expanded(
      
              flex: 1,
              child: Row(
                children: [
      
      
                  const Icon(
              EvaIcons.calendarOutline, // the Eva Icons 
              color: Color.fromARGB(225, 36, 3, 3),
              size: 25,
            ),
      
            
            SizedBox(
              width: size.width / 35,
            ),
      
      
      
      
                  const Text(
                    "22 Sep 2023",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                 
      
            
                ],
              ),
       
            ),
              ],
            ),
      ),
      
      
      
      
      
                    //middle space
                      SizedBox(
                        height: size.height/40,
                      ),
      
                      // First row
                      Row(
      
                        children: [
      
                          
      
                          Expanded(
      
                            flex: 1,
                            child: Container(
                              height: size.height / 17,
                              
                              
                              child: const Padding(
      
                                padding: EdgeInsets.all(8.0),
                                child: Text("Status :",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          ),
      
      
      
                          SizedBox(
                            width: 16.0
                            ),
      
      
      
                          Expanded(
                             flex: 1,
                            child: Container(
                              height: size.height /17,
                             
                              
                              child: const Padding(
      
                                padding: EdgeInsets.all(8.0),
                                child: Text("Processing",
                                style: TextStyle(
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w300,
                                ),),
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
          ],
        ),
      ),
    );
  }
}

