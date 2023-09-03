import 'package:flutter/material.dart';
import 'package:madugc/pages/forgotpassword.dart';
import 'package:madugc/pages/signin.dart';

void main(){
  runApp(rec());
}

class rec extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signin()
    );
  }
}