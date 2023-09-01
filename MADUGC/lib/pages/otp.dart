import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:madugc/pages/resetpassword.dart';

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OTP Verification",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Check your email to see the verification code")
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 300,
                    width: 300,
                    child: Image.asset("images/otp.png",width: 250,)),
                Row(

                )
              ],
            ),



            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                OtpTextField(
                  numberOfFields: 4,
                  fillColor: Colors.black.withOpacity(0.2),


                )
              ],
            ),

            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: ElevatedButton(

                    style: ButtonStyle(

                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),

                        ),
                      ),backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return resetpswrd();
                          }
                      ));
                    },
                    child: const Text("Verify",style: TextStyle(fontSize: 20),),

                  ),
                ),
              ],
            )


            // to recovery your password
          ],
        ),
      ),
    ));
  }
}
