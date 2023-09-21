import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/athletic_club_join_succesful.dart';

class TennisJoinForm extends StatelessWidget {
  const TennisJoinForm({super.key, required String inputText});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Colors.white,
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 130,
                      //color: Colors.white,
                      child: Image.asset("assets/table_tennis_logo.png",
                      height: 90,
                      width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                      width: 230,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Center(child: Text("Tennis", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 50),)),
                          ),
                          Center(child: Text("Get a new experience with us", style: TextStyle(fontSize: 15),)),
                        ],
                      ),
                      //color: Colors.white,
                    ),
                  ],
                ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey,),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                  child: Column(
                    children: [
                      const Text("Get your membership" , style: TextStyle(color: Colors.green , fontSize: 20 , fontWeight: FontWeight.w900),),
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(alignment: Alignment.bottomLeft, child: Text("Student ID" , style: TextStyle(color: Colors.grey),)),
                      const SizedBox(
                        height: 40,
                        width: 320,
                        child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(alignment: Alignment.bottomLeft, child: Text("E-mail" , style: TextStyle(color: Colors.grey),)),
                      const SizedBox(
                        height: 40,
                        width: 320,
                        child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(alignment: Alignment.bottomLeft, child: Text("Full Name" , style: TextStyle(color: Colors.grey),)),
                      const SizedBox(
                        height: 40,
                        width: 320,
                        child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(alignment: Alignment.bottomLeft, child: Text("Faculty" , style: TextStyle(color: Colors.grey),)),
                      const SizedBox(
                        height: 40,
                        width: 320,
                        child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(alignment: Alignment.bottomLeft, child: Text("Phone Number" , style: TextStyle(color: Colors.grey),)),
                      const SizedBox(
                        height: 40,
                        width: 320,
                        child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(alignment: Alignment.bottomLeft, child: Text("Username" , style: TextStyle(color: Colors.grey),)),
                      const SizedBox(
                        height: 40,
                        width: 320,
                        child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                        width: 320,
                        child : ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  const JoinSuccesfulPage(inputText: '',),
                            ),
                          );
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, 
                        ),
                        child: const Text("Submit" , style: TextStyle(fontSize: 20),),
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
       
    );
  }
}
