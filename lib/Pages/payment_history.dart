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

          //bottom: PreferredSize( preferredSize: Size.fromHeight(0.5), child: Text("Payment History"),),
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
                height: size.height/40,
              ),





                          //payment history
                          ///////////////////////////////////////////////////////////
                          ///sample values////
             /*    const SizedBox(
                  child: Row(
                   
                  children: [
                   
                 
                   //date
                    Expanded(
                      flex: 1,
                      child: SizedBox(

                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                        
                        
                              Text("31 Aug 2023",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              ),
                        
                        
                              Text("10.37",
                              style: TextStyle(
                                fontSize: 16,),
                              ),
                            ],
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
*/

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