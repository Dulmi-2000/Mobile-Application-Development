import 'package:flutter/material.dart';
import 'package:seugc/page/register.dart';
void main(){
  runApp(reg());
}


class reg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: signup(),
    );
  }
}