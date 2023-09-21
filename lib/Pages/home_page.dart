import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  get title => null;
  @override
  Widget build(BuildContext context) {

     Size size =MediaQuery.of(context).size; 

           
           return Scaffold(

            backgroundColor: Colors.white,
            
          appBar: AppBar(
            

            //search bar
            title: TextField(
              keyboardType: TextInputType.text,
              controller: title,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                ),


                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.close, 
                    color: Colors.grey,
                  ),
                  onPressed: (){
                  },
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search..',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),

                backgroundColor: HexColor('#39B54A'),
            ),



            body: SingleChildScrollView(
              child: Column(
              children: [
                       //space in top of the page
                
                

                //row for the logos
                SizedBox(
                  height: size.height/8,
                  width: size.width,

                  child: Row(
                   children :[

                      Padding(
                        //space between image and the corner
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/nsbm-logo-best.png",
                          height: size.height/3,
                          width: size.width/3.3,
                          alignment: Alignment.center,),
                      ),
                
                
                        SizedBox(
                          //height: size.height/35,
                          width: size.width/20,
                        ),


                
                        Container(
                          height: size.height/15,
                          width: size.width/400,
                          color: Colors.grey,
                          alignment: Alignment.topCenter,
                        ),

                          SizedBox(
                          height: size.height/30,
                          width: size.width/20,
                        ),

                
                      Text('Recreation and \nWellness center',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),),


                   ],
                
                  ),
                ),
                

                //space in first row and cover image
               
                

                //cover image
                 Image.asset("assets/sports.jpg",
                 height: size.height/5,
                 width: size.width/1.1,
                 ),

                
                //space in cover image and container
                SizedBox(
                  height: size.height/60,
               width: size.width/5,
                ),



                //sports clubs
                 Container(
                  height: size.height/6.5,
                  width: size.width/1.1,
                      decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                     color: HexColor("B0B0B0"),
                   )
                      ),



                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            
                            child : Align(
                              alignment: Alignment.topLeft,
                            child: Text("My Sport Clubs",
                             style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                             ),
                             textAlign: TextAlign.left,  //make the correct align of the image
                            ),
                            ),
                          ),



                        Container(
                          padding: const EdgeInsets.all(0),
                          width: size.width,
                          height: size.height/10,
                          color: HexColor('#39B54A'),



      




                          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
       
       
                // Green color containers

  SizedBox(width: 10), 




//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here


  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "Shuttlecock.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 45, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Badminton",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),




      




  
        SizedBox(width: 10), 
  







      //buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here
  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "chess.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 45, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Chess",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),



  
        SizedBox(width: 10), 
  



//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here
  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "ruger.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 35, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Rugby",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),





      SizedBox(width: 10), 
  



//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here


  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "Volleyball.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 40, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Volley Ball",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),




      



SizedBox(
  width: 10,
),







      //buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here
  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "athletic.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 45, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Athletics",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),









SizedBox(
  width: 10,
),











//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here


  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "basketball.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 50, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Basket Ball",
          
            style: TextStyle(
          
              fontSize: 10, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),




      



SizedBox(
  width: 10,
),







//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here


  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "netball.png", // Replace with your image asset path
  
          height: 35, // Adjust the height as needed
  
          width: 45, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Net Ball",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),




      



SizedBox(
  width: 10,
),




//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here


  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "Cricket.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 45, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Cricket",
          
            style: TextStyle(
          
              fontSize: 12, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),




      



SizedBox(
  width: 10,
),




//buttons of the scroll bar            
Container(
  height: 65,
  width: 79,
  child:   ElevatedButton(
  
    onPressed: () {
  
      // Add your button action here


  
    },
  
    style: ElevatedButton.styleFrom(
  
      shape: RoundedRectangleBorder(
  
        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius 
  
      ),
  
      padding: EdgeInsets.all(10.0), // Adjust the padding 
  
      primary: Colors.white, // Background color of the button
  
  
  
    ),
  
  
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
  
      crossAxisAlignment: CrossAxisAlignment.center,
  
      children: [
  
        Image.asset(
  
          "ttenis.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 45, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 3), // Add spacing between image and text
  
  
  
  
  
  
  
  
  
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
          
            "Table Tenis",
          
            style: TextStyle(
          
              fontSize: 10, // Adjust the font size as needed
          
              //fontWeight: FontWeight.bold,
          
              color: Colors.black // Adjust the font weight as needed
          
            ),
          
          ),
        ),
  
      ],
  
    ),
  
  ),
),




      






      



SizedBox(
  width: 10,
),




              ],
            ),
          ),
                          ),
                        
                      
                        ],
                      ),

                      










                 ),

                    //middle space
                    SizedBox(
                  height: size.height/45,
               width: size.width/10,
                ),




            Container(
              child: Column(
                        
                        
                children:
                [ 
                  Row(
                  children: [
                    // Green color containers

                    
                    
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                              

                              
                            Container(
                              height: size.height / 9,
                              width: size.width / 2.6,
                              decoration: BoxDecoration(
                                color: HexColor('#39B54A'),
                                borderRadius: BorderRadius.circular(5),
                              ),
                             
                             child: Column(

                              children:
                             [



                              SizedBox(
                                height: 13,
                              ),





                              Image.asset(
  
          "event.png", // Replace with your image asset path
  
          height: 40, // Adjust the height as needed
  
          width: 40, // Adjust the width as needed
  
         // fit: BoxFit.cover, // Adjust the image fit as needed
  
        ),
  
  
  
  
  
        SizedBox(height: 6), // Add spacing between image and text
  
        
                             Text("Reservations",
                             style: TextStyle(

                              fontSize: 17,
                              color: Colors.white,
                              letterSpacing: 0.1,
                             ),),         

                             ]



                              
                            ),
                            ),
                          ],
                        ),
                      ),
              






              Padding(
                      padding: const EdgeInsets.only(left: 43),
                      child: Column(


                        children: [


                          Container(
                            height: size.height / 9,
                            width: size.width / 2.6,
                            decoration: BoxDecoration(
                              color: HexColor('#39B54A'),
                              borderRadius: BorderRadius.circular(5),


                              
                            ),

                            child: InkWell(


                              onTap: () { 




                               },




                              child: Column(
                            
                                children: [
                            
                                  
                                SizedBox(
                                  height: 10,
                                ),
                            
                            
                            
                              Image.asset(
                              
                                      "payment1.png", // Replace with your image asset path
                              
                                      height: 50, // Adjust the height as needed
                              
                                      width: 50, // Adjust the width as needed
                              
                                     // fit: BoxFit.cover, // Adjust the image fit as needed
                              
                                    ),
                            
                            
                            
                            
                            
                              
                              
                                    SizedBox(height: 3), // Add spacing between image and text
                              
                            
                            
                                    
                               Text("Payments",
                               style: TextStyle(
                            
                                fontSize: 17,
                                color: Colors.white,
                                letterSpacing: 0.1,
                               ),),         
                            
                               
                            
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                      
                  ],
                ),
                       
                        
                        
                        
                        
                        
                        
                        SizedBox(
                            height: size.height/35,
                            width: size.width/30,
                          ),
                        
                        
                          
                        
              Row(
                children: [
                  // Green color containers
                  
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                           
                            height: size.height / 9,
                            width: size.width / 2.6,
                            decoration: BoxDecoration(
                               color: HexColor('#39B54A'),
                             
                              borderRadius: BorderRadius.circular(5),
                            ),
///////////////////////////////////////////

                            child: InkWell(
                              
                              onTap: () { 




                               },
                              child: Column(
                            
                                children: [
                            
                                    SizedBox(
                                  height: 10,
                                ),
                            
                            
                            
                              Image.asset(
                              
                                      "letter.png", // Replace with your image asset path
                              
                                      height: 50, // Adjust the height as needed
                              
                                      width: 50, // Adjust the width as needed
                              
                                     // fit: BoxFit.cover, // Adjust the image fit as needed
                              
                                    ),
                            
                            
                            
                            
                            
                              
                              
                                    SizedBox(height: 3), // Add spacing between image and text
                              
                            
                            
                                    
                               Text("Request Letters",
                               style: TextStyle(
                            
                                fontSize: 17,
                                color: Colors.white,
                                letterSpacing: 0.1,
                               ),),         
                            
                               
                                ],
                              ),
                            ),
                            /////////////////////
                          ),
                        ],
                      ),
                    ),
                        


              Padding(
                      padding: const EdgeInsets.only(left: 43),
                      child: Column(


                        children: [


                          Container(
                            height: size.height / 9,
                            width: size.width / 2.6,
                            decoration: BoxDecoration(
                              color: HexColor('#39B54A'),
                              borderRadius: BorderRadius.circular(5),


                              
                            ),

                            child: InkWell(


                              onTap: () { 




                               },




                              child: Column(
                            
                                children: [
                            
                                  
                                SizedBox(
                                  height: 10,
                                ),
                            
                            
                            
                              Image.asset(
                              
                                      "Attendance.png", // Replace with your image asset path
                              
                                      height: 50, // Adjust the height as needed
                              
                                      width: 50, // Adjust the width as needed
                              
                                     // fit: BoxFit.cover, // Adjust the image fit as needed
                              
                                    ),
                            
                            
                            
                            
                            
                              
                              
                                    SizedBox(height: 3), // Add spacing between image and text
                              
                            
                            
                                    
                               Text("Attendance",
                               style: TextStyle(
                            
                                fontSize: 17,
                                color: Colors.white,
                                letterSpacing: 0.1,
                               ),),         
                            
                               
                            
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                      
                  ],
                
                       
                        
                    
              
              ),
                ],
                         ),
            ),







SizedBox(
                          height: size.height/35,
                          width: size.width/20,
                        ),



                     //event container
                 // ...

Container(
  height: size.height /3.3,
  width: size.width / 1.1,
 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: HexColor("B0B0B0"),
       
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Row(
    children: [
Padding(
  padding: const EdgeInsets.all(5),
  child: Text("Recent Events", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                             ),),
  ),
  
Align(
  
  child :Padding(
  padding: const EdgeInsets.only(left: 150),
  child: Text("See All", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                             ),),
  ),
 

),
  
    ],
  ),

      
      SizedBox(
                  height: size.height/8,
                  width: size.width,

                  child: Row(
                   children :[
                    

                      Padding(
                        //space between image and the corner
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/nsbm-logo-best.png",
                          height: size.height/4,
                          width: size.width/4.5,
                          alignment: Alignment.center,),
                      ),
                
                
                        SizedBox(
                          //height: size.height/35,
                          width: size.width/20,
                        ),


                
                       
Text('Athletic Inter University Meetup \nAthletic Inter University Meetup \nAthletic Inter University Meetup', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                   ],
                
                  ),


                ),

                Container(
                          height: size.height/1000,
                          //padding: const EdgeInsets.all(5),
                          width: size.width,
                          
                          color: Colors.grey,
                          alignment: Alignment.topCenter,
                        ),

                SizedBox(
                  height: size.height/8,
                  width: size.width,

                  child: Row(
                   children :[
                    

                      Padding(
                        //space between image and the corner
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/nsbm-logo-best.png",
                          height: size.height/4,
                          width: size.width/4.5,
                          alignment: Alignment.center,),
                      ),
                
                
                        SizedBox(
                          //height: size.height/35,
                          width: size.width/20,
                        ),


                
                       

                  Text('Athletic Inter University Meetup \nAthletic Inter University Meetup \nAthletic Inter University Meetup', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                   ],
                
                  ),

                  
                ),

                
    ],
  ),
),





SizedBox(
                          height: size.height/35,
                          width: size.width/20,
                        ),



Container(
  height: size.height /3.3,
  width: size.width / 1.1,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: HexColor("B0B0B0"),
       
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Row(
    children: [
Padding(
  padding: const EdgeInsets.all(5),
  child: Text("Recent Events", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                             ),),
  ),
  
Align(
  
  child :Padding(
  padding: const EdgeInsets.only(left: 150),
  child: Text("See All", style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                             ),),
  ),
 

),
  
    ],
  ),

      
      SizedBox(
                  height: size.height/8,
                  width: size.width,

                  child: Row(
                   children :[
                    

                      Padding(
                        //space between image and the corner
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/nsbm-logo-best.png",
                          height: size.height/4,
                          width: size.width/4.5,
                          alignment: Alignment.center,),
                      ),
                
                
                        SizedBox(
                          //height: size.height/35,
                          width: size.width/20,
                        ),


                
                       

                       

                
                      Text('Athletic Inter University Meetup \nAthletic Inter University Meetup \nAthletic Inter University Meetup', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                   ],
                
                  ),


                ),

                Container(
                          height: size.height/1000,
                          padding: const EdgeInsets.only(left: 150),
                          width: size.width,
                          color: Colors.grey,
                          alignment: Alignment.topCenter,
                        ),

                SizedBox(
                  height: size.height/8,
                  width: size.width,

                  child: Row(
                   children :[
                    

                      Padding(
                        //space between image and the corner
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/nsbm-logo-best.png",
                          height: size.height/4,
                          width: size.width/4.5,
                          alignment: Alignment.center,),
                      ),
                
                
                        SizedBox(
                          //height: size.height/35,
                          width: size.width/20,
                        ),


                
                       

                       

                
                      Text('Athletic Inter University Meetup \nAthletic Inter University Meetup \nAthletic Inter University Meetup', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),

                       SizedBox(
                          height: size.height/35,
                          
                        ),

                     


                
                      
                   ],
                
                  ),

                  
                ),

                
    ],
  ),
),

// ...
SizedBox(
                          height: size.height/30,
                          width: size.width/20,
                        ),
                 
                 
              ],
              
            ),


),


           );
  }
}