import 'package:flutter/material.dart';

class resetpswrd extends StatefulWidget {
  const resetpswrd({Key? key}) : super(key: key);

  @override
  State<resetpswrd> createState() => _resetpswrdState();
}

class _resetpswrdState extends State<resetpswrd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Enter your New Password")
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

            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30,),
                Container(
                  width: 350,

                  child:

                  Text("New Password",style: TextStyle(fontSize: 20,color: Colors.grey),)  ,
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
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30,),
                Container(
                  width: 350,

                  child:

                  Text("Confir Password ",style: TextStyle(fontSize: 20,color: Colors.grey),)  ,
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
                      /*  Navigator.of(context).push(MaterialPageRoute(
                            builder:(_){
                              return otppage();
                            }
                        ));*/
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
