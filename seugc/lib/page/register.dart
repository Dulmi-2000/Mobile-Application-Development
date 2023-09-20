import 'package:flutter/material.dart';
import 'package:seugc/page/test.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _id = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _faculty = TextEditingController();
  TextEditingController _num = TextEditingController();
  TextEditingController _fullname = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  // void _showSnackBar() {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text('Field cannot be empty'),
  //     ),
  //   );
  // }

  void _shownSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:Text('Field cannot be empty')
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(


          children: [
            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text("Get Started ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
              ],
              
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Get a New Experience with us ")
              ],
            ),
            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 650,
                  width: 350,

                  // decoration: BoxDecoration(
                  //   // borderRadius: BorderRadius.circular(10),
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black26.withOpacity(0.2),
                  ),
                  child: SingleChildScrollView(
                    child:

                    Form(
                      key: _formkey,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                child:GestureDetector(
                                  onTap: (){

                                  },
                                    child: Image.asset("images/dp.png")),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Student ID")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _id,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.account_box_outlined , color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Feild Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Email")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(

                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _emailController,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.email_sharp, color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Feild Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Full Name")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(

                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _fullname,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.person , color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Field Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Facutly")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _faculty,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(

                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.school, color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Field Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Phone Number ")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _num,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.phone, color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Field Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("User Name ")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _username,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.person , color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Field Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Password")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _password,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.password , color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Field Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,width: 10,),
                              Text("Confirm Password")
                            ],
                          ),
                          Row(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow:[ BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(1,1),
                                        color: Colors.grey.withOpacity(1)
                                    )]
                                ),
                                child: TextFormField(
                                  controller: _confirmpassword,
                                  style: TextStyle(fontSize: 10 , height: 2.0),
                                  decoration: InputDecoration(
                                    // hintText: "User Name",
                                      prefixIcon: Icon(Icons.password, color: Colors.grey)
                                  ),
                                  validator: (text){
                                    if(text?. isEmpty ?? true)
                                    {
                                      _shownSnackBar();
                                      return 'Field Cannot be empty empty';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 200,
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

                        ],
                      ),
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account ? "),
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context) => test(),
                      ));

                    },
                    child: Text("Sign in",style: TextStyle(color: Colors.blueAccent),))
              ],
            )
          ],
          
        ),
      ),
    ));
  }
}
