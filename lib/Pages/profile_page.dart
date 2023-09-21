// ignore_for_file: avoid_print

//import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';
import 'package:npaly_application/Pages/home_page.dart';
import 'package:npaly_application/Pages/my_clubs_page.dart';
import 'package:npaly_application/Pages/nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("failed to pick image: $e");
    }
  }

  //forcover image
  File? coverimage;
  Future pickCoverImage(ImageSource source) async {
    try {
      final coverimage = await ImagePicker().pickImage(source: source);
      if (coverimage == null) return;

      final imageCoverTemporary = File(coverimage.path);
      setState(() => this.coverimage = imageCoverTemporary);
    } on PlatformException catch (e) {
      print("failed to pick coverimage: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //row mokuth dala na default widihata hadala tyenne . kagen hari ahala app bar ektth ewa dann onida kiyala blnn.
        backgroundColor: HexColor("#39B54A"),
        //backbutton
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          icon: const Icon(LineAwesomeIcons.arrow_left),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        //right corner button icons
        actions: [
          //notification icon
          // IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.bell)),
          //setting icon
          IconButton(onPressed: () {}, icon: const Icon(LineAwesomeIcons.cog)),
        ],
      ),
      //using stack for overlapping profile picture
      body: ListView(
        //padding: EdgeInsets.zero,
        //shrinkWrap: true, // Allows the ListView to take the necessary height
        //physics: const NeverScrollableScrollPhysics(),
        children: [
          buildTopSection(),
          buildTopContentSection(),
          buildBottomSection()
        ],
      ),
      bottomNavigationBar: const NavBarPage(),
    );
  }

  Widget buildTopSection() {
    Size size = MediaQuery.of(context).size;
    final double coverHeight = size.width / 3;
    final double profileHeight = size.width / 5;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        //build cover image container . waradi hadagann...........
        Container(
          //set margine bcz without this margin user name overlap with profile pic
          margin: EdgeInsets.only(bottom: profileHeight / 2),
          color: Colors.grey,
          child: coverimage != null
              ? Image.file(
                  coverimage!,
                  width: double.infinity,
                  height: coverHeight,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  'assets/default_cover.png',
                  width: double.infinity,
                  height: coverHeight,
                  fit: BoxFit.cover,
                ),
        ),

        //cameraicon on cover image
        Positioned(
          top: coverHeight - 32,
          left: size.width - 32,
          child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheetCover()));
              },
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      border: Border.all(color: Colors.white, width: 2.0)),
                  child: const Icon(Icons.camera_alt,
                      color: Colors.black, size: 15.0))),
        ),

        //buildprofile image ................image eka display wenne na
        Positioned(
          top: coverHeight - profileHeight / 2,
          child: Stack(
            children: [
              CircleAvatar(
                radius: profileHeight / 2,
                backgroundColor: Colors.grey.shade800,
                backgroundImage: image != null
                    ? Image.file(image!).image
                    : const AssetImage("assets/default_profile.jpg"),
                /*child: image != null
                    ? Image.file(
                        image!,
                        
                      )
                    : Image.asset(
                        'assets/test_one.png',
                        
                        fit: BoxFit.cover,
                      ),*/

                //backgroundImage: const NetworkImage(
                //  'https://www.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_40965130.htm#query=4k%20wallpaper&position=0&from_view=keyword&track=ais',
                // ),
              ),
              //camera icon on profile image
              Positioned(
                //top: coverHeight + profileHeight / 5,
                //left: size.width / 2 + profileHeight / 3,
                bottom: 0,
                right: 0,

                child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: ((builder) => bottomSheetProfile()));
                    },
                    child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            border:
                                Border.all(color: Colors.white, width: 2.0)),
                        child: const Icon(Icons.camera_alt,
                            color: Colors.black, size: 15.0))),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTopContentSection() {
    //Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 8),
        const Text(
          "Gayathri Iresha",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Text(
          "543687",
          style: TextStyle(fontSize: 12),
        ),
        const Text(
          "Faculty of computing",
          style: TextStyle(fontSize: 12),
        ),
        const Text(
          "Bsc(honors) in software Engineering",
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 25,
          child: ElevatedButton(
            onPressed: () {},
            style:
                ElevatedButton.styleFrom(backgroundColor: HexColor("#39B54A")),
            child: const Text(
              "Edit Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }

  Widget buildBottomSection() {
    return Column(children: [
      //for myclub..................
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyClubsPage(),
            ),
          );
        },
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.futbol_o,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "My Clubs",
            style: TextStyle(
              color: HexColor("#39B54A"),
              fontSize: 18,
              //fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),

      //for my events
      InkWell(
        onTap: () {},
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.trophy,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "My Events",
            style: TextStyle(
              fontSize: 18,
              color: HexColor("#39B54A"),
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),

      //fr my attendance
      InkWell(
        onTap: () {},
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.paste,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "My Attendance",
            style: TextStyle(
              fontSize: 18,
              color: HexColor("#39B54A"),
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),

      //forpayments
      InkWell(
        onTap: () {},
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.credit_card,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "Transaction History",
            style: TextStyle(
              fontSize: 18,
              color: HexColor("#39B54A"),
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),

      //for reservations
      InkWell(
        onTap: () {},
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.calendar,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "My Reservations",
            style: TextStyle(
              fontSize: 18,
              color: HexColor("#39B54A"),
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),

      //for requested letters
      InkWell(
        onTap: () {},
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.file,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "My Requested Letters",
            style: TextStyle(
              fontSize: 18,
              color: HexColor("#39B54A"),
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),

      //for extra

      //for logout
      InkWell(
        onTap: () {},
        //color: HexColor("#FBFBFB"),
        child: ListTile(
          leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: HexColor("#39B54A").withOpacity(0.1),
              ),
              child: Icon(
                LineAwesomeIcons.sign_out,
                color: HexColor("#39B54A"),
              )),
          title: Text(
            "Logout",
            style: TextStyle(
              fontSize: 18,
              color: HexColor("#39B54A"),
            ),
          ),
          trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              LineAwesomeIcons.angle_right,
              size: 18.0,
              color: HexColor("#39B54A"),
            ),
          ),
        ),
      ),
//end of object8
    ]);
  }

  //if click profile image camera button this  pop up
  Widget bottomSheetProfile() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      //width: size.width,
      margin: const EdgeInsets.symmetric(
        //horizontal: 20,
        vertical: 20,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Add Profile photo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => pickImage(ImageSource.camera),
                child: ListTile(
                  //contentPadding: const EdgeInsets.only(right: 0, ),
                  horizontalTitleGap: 10,
                  leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: HexColor("#39B54A").withOpacity(0.2),
                      ),
                      child: Icon(
                        size: 18,
                        Icons.camera_alt,
                        color: HexColor("#39B54A"),
                      )),
                  title: Text(
                    "Take a photo",
                    style: TextStyle(
                      color: HexColor("#39B54A"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => pickImage(ImageSource.gallery),
                child: ListTile(
                  //contentPadding: const EdgeInsets.only(right: 0),
                  horizontalTitleGap: 10,
                  leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: HexColor("#39B54A").withOpacity(0.2),
                      ),
                      child: Icon(
                        size: 18,
                        Icons.image,
                        color: HexColor("#39B54A"),
                      )),
                  title: Text(
                    "Upload from Gallary",
                    style: TextStyle(
                      color: HexColor("#39B54A"),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }

//if click cover image camera button this  pop up
  Widget bottomSheetCover() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      //width: size.width,
      margin: const EdgeInsets.symmetric(
        //horizontal: 20,
        vertical: 20,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Add Profile photo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => pickCoverImage(ImageSource.camera),
                child: ListTile(
                  //contentPadding: const EdgeInsets.only(right: 0, ),
                  horizontalTitleGap: 10,
                  leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: HexColor("#39B54A").withOpacity(0.2),
                      ),
                      child: Icon(
                        size: 18,
                        Icons.camera_alt,
                        color: HexColor("#39B54A"),
                      )),
                  title: Text(
                    "Take a photo",
                    style: TextStyle(
                      color: HexColor("#39B54A"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => pickCoverImage(ImageSource.gallery),
                child: ListTile(
                  //contentPadding: const EdgeInsets.only(right: 0),
                  horizontalTitleGap: 10,
                  leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: HexColor("#39B54A").withOpacity(0.2),
                      ),
                      child: Icon(
                        size: 18,
                        Icons.image,
                        color: HexColor("#39B54A"),
                      )),
                  title: Text(
                    "Upload from Gallary",
                    style: TextStyle(
                      color: HexColor("#39B54A"),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
