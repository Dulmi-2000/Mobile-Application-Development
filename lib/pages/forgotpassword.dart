import 'package:flutter/material.dart';
import 'package:madugc/pages/otp.dart';

class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0,),
                    Text("Forgot Password",style: TextStyle(fontSize: 40),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Enter your email account to reset password ")
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
                      child: Image.asset("images/email.png" ),
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
                SizedBox(height: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    Container(
                      width: 350,

                      child:

                      Text("Email",style: TextStyle(fontSize: 20,color: Colors.grey),)  ,
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
                            prefixIcon: Icon(Icons.email, color: Colors.grey)
                        ),
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
                      height: 35,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder:(_){
                                  return otppage();
                                }
                            ));
                          }
                          ,
                          child: Text("Continue ")
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),

        ));
  }
}



