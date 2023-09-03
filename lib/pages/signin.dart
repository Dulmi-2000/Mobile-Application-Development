import 'package:flutter/material.dart';
import 'package:madugc/pages/forgotpassword.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0,),
                    Text("Welcome Back",style: TextStyle(fontSize: 40),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Sign in to your Account ")
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      child: Image.asset("images/signin.png" ),
                    )
                  ],
                ),
                // Row(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //           color: Colors.white,
                //           // borderRadius: BorderRadius.circular(35),
                //           boxShadow:[ BoxShadow(
                //             blurRadius: 10,
                //             offset: Offset(1, 1),
                //             color: Colors.grey.withOpacity(1),
                //           )
                //           ]
                //       ),
                //
                //       child:
                //       const TextField(
                //         style: TextStyle(fontSize: 10 , height: 2.0),
                //         decoration: InputDecoration(
                //             hintText: "User Name",
                //             prefixIcon: Icon(Icons.account_box_outlined , color: Colors.red,)
                //         ),
                //       ),
                //     ),
                //   ],
                // )
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                  Container(
                    width: 350,

                    child:

                    Text("User Name",style: TextStyle(fontSize: 20,color: Colors.grey),)  ,
                  )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       boxShadow:[ BoxShadow(
                         blurRadius: 10,
                         offset: Offset(1,1),
                         color: Colors.grey.withOpacity(1)
                       )]
                     ),
                     child: TextField(
                       style: TextStyle(fontSize: 10 , height: 2.0),
                       decoration: InputDecoration(
                           // hintText: "User Name",
                           prefixIcon: Icon(Icons.account_box_outlined , color: Colors.grey)
                       ),
                     ),
                   )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 30,),
                    Container(
                      width: 350,
                      child:
                      Text("Password",style: TextStyle(fontSize: 20 ,color: Colors.grey),),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow:[ BoxShadow(
                              blurRadius: 10,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(1)
                          )]
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 10 , height: 2.0),
                        decoration: InputDecoration(
                            // hintText: "Password",
                            prefixIcon: Icon(Icons.password , color: Colors.grey,)
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 7,),
                Row(

                  children: [
                    Container(
                      width: 380,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [


                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                  builder: (context) => password(),
                                ));
                              },
                              child: Text("Forgot Password ?",style: TextStyle(color: Colors.green),))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 30,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: (){},
                        child: Text("Sign In")
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account ? "),
                    GestureDetector(
                        onTap: (){

                        },
                        child: Text("Sign in",style: TextStyle(color: Colors.green),))
                  ],
                )
              ],
            ),
          ),

        ));
  }
}
