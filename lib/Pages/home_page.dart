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
                  color: Colors.white,
                ),


                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.close, 
                    color: Colors.white,
                  ),
                  onPressed: (){
                  },
                ),
                border: InputBorder.none,
                filled: true,
                hintText: 'search..',
                hintStyle: const TextStyle(color: Colors.white70),
              ),
            ),

                backgroundColor: HexColor('#39B54A'),
            ),



            body: Column(
              children: [
                       //space in top of the page
                SizedBox(
                  height: size.height/105,
               width: size.width/5,
                ),
                

                //row for the logos
                SizedBox(
                  height: size.height/8,
                  width: size.width,

                  child: Row(
                   children :[

                      Padding(
                        //space between image and the corner
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/nsbm-logo.png",
                          height: size.height/2,
                          width: size.width/2,
                          alignment: Alignment.topLeft,),
                      ),
                
                
                        SizedBox(
                          //height: size.height/35,
                          width: size.width/20,
                        ),


                
                        Container(
                          height: size.height/25,
                          width: size.width/80,
                          color: Colors.green,
                          alignment: Alignment.topCenter,
                        ),
                
                      Text('NSBM'),


                
                      Text('AAAA2'),
                   ],
                
                  ),
                ),
                

                //space in first row and cover image
                SizedBox(
                  height: size.height/105,
               width: size.width/5,
                ),
                

                //cover image
                 Image.asset("assets/sports.jpg",
                 height: size.height/5,
                 width: size.width/1.1,),

                
                //space in cover image and container
                SizedBox(
                  height: size.height/85,
               width: size.width/5,
                ),



                //sports clubs
                 Container(
                  height: size.height/8,
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
                            padding: EdgeInsets.all(3.0),
                            
                            child : Align(
                              alignment: Alignment.topLeft,
                            child: Text("My Sport Clubs",
                             style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                             ),
                             textAlign: TextAlign.left,  //make the correct align of the image
                            ),
                            ),
                          ),



                        //row
                        Row(

                          children: [
                            //green color container
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                              
                                               height: size.height/15,
                                               width: size.width/1.5,
                                               
                                                //color: HexColor('#39B54A'),
                                                   decoration:BoxDecoration(
                                                      color: HexColor('#39B54A'),
                                                   borderRadius: BorderRadius.circular(5),
                                                   
                                                   )),
                             )
                          ],
                        ),
                      
                        ],
                      ),

                      
                 ),

                    //middle space
                    SizedBox(
                  height: size.height/45,
               width: size.width/5,
                ),





                     //event container
                 // ...

Container(
  height: size.height /5,
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
      const Padding(
        padding: EdgeInsets.all(0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            "My Sport Clubs",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      Expanded(
        child: SingleChildScrollView( // Use SingleChildScrollView to enable scrolling
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Image.asset(
                  "assets/nsbm-logo.png",
                  height: size.height / 3, // Adjust the image dimensions as needed
                  width: size.width / 3,
                  alignment: Alignment.topCenter,
                ),

                
              ),
              Text("hi how aerw u nng;",textAlign: TextAlign.start,),
            ],
          ),
        ),
      ),
    ],
  ),
),

// ...

                 
                 
              ],
              
            ),





           );
  }
  
  
  
}