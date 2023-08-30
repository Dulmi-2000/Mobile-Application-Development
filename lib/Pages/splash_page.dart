import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context){
  Size size=MediaQuery.of(context).size;

     return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
      body: Center(
        child: Column(

         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         



   //////////////////change this code////////////////////////////////


         
         children: [
          Expanded(
            flex: 4,
            child: SizedBox(
          width: double.infinity,
          //padding: const EdgeInsets.only(right: 10),






            child: Center(
              child: Image.asset("assets/logo1.png",
              height: size.height/5,
              width: size.width/4,
              ),
              ),
            ),        
          ),





          Expanded(
          flex: 1, 
          child: Center(

            child: Container(
            
              padding: const EdgeInsets.all(30),
            //  child: Image.asset("assets/logo2.png")
              )
            ),
         
           )
          ], 
        ),
      )
    );
  } 
}