import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentHistory extends StatelessWidget{
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context)
  {

   Size size=MediaQuery.of(context).size; 

      return Scaffold(

         //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        appBar: AppBar(


          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Payments",
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




          body: SizedBox(

        //height and width for the page
        height: double.infinity,
        width: double.infinity,
         

         child: Column(
          children: [

                 
            //space in the top of the page
            SizedBox(
              height: size.height/30,
            ),

           

            
            //payment history
                 const Padding(
                   padding: EdgeInsets.all(10.0),
                   child: SizedBox(
                    child: Row(
                     
                    children: [
                     
                 
                     //date
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text("Date",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                        ),
                      ),
                 
                 
                 
                 
                       //description
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text("Description",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                      
                        ),
                      ),
                                 
                      
                 
                 
                       //amount
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text("Amount (Rs)",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                      
                        ),
                      ),
    
                    ],
                    
                    ),
                  ),
                 ),

              
              //space between columns
              Container(
                height: size.height/80,
              ),







            //horizontal line
            Container(
                height: size.height/650,
                color: HexColor('#39B54A'),
            ),

                   

               //space between columns
              Container(
                height: size.height/80,
              ),


            
            //payment history sample/////////////
                 const Padding(
                   padding: EdgeInsets.all(10.0),
                   child: SizedBox(
                    child: Row(
                     
                    children: [
                     
                 
                     //date
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text("31 Aug 2023\n\n10:37 AM ",
                          style: TextStyle(
                            fontSize: 15,
                            
                          ),
                          ),
                        ),
                      ),
                 
                 
                 
                 
                       //description
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text("Gym Fees",
                          style: TextStyle(
                            fontSize: 16,
                            
                          ),
                          ),
                      
                        ),
                      ),
                                 
                      
                 
                 
                       //amount
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text("1000.00",
                          style: TextStyle(
                            fontSize: 16,
                            
                          ),
                          ),
                      
                        ),
                      ),
    
                    ],
                    
                    ),
                  ),
                 ),
                    //space between line and data
              Container(
                height: size.height/80,
              ),



                    



                 //space between content and line
                 Container(
                  height: size.height/50,
                 ),



            //horizontal line
            Container(
                height: size.height/650,
                color: HexColor('#39B54A'),
            )


          ],
         
         ),


      

        ),



      );

  }
}