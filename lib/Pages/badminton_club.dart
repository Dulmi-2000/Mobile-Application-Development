import 'package:flutter/material.dart';
import 'package:npaly_application/Pages/badminton_club_join_form.dart';

class Badmintonpage extends StatelessWidget {
  const Badmintonpage({super.key, required String inputText});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; 


    return Scaffold(
      appBar: AppBar(
        title: const Text("Badminton Club"),
        backgroundColor: Colors.green.shade500,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/badmintonclub.jpg",
                      width: size.width / 3,
                    ),
                  ), 
                ),
                const Expanded(
                  child: SizedBox(
                    height: 140,
                    width: double.infinity,
                    child: Center(child: Text("The Athletics Club at NSBM Green University is a prominent sports club within the Sri Lankan university community. Throughout its history, the NSBM Athletic Club has served as a training ground for many skilled and accomplished athletes, many of whom haveachieved national recognition and earned goldmedals. The club supports both elite and emerging athletes in the NSBM community to achieve sporting and academic excellence.",
                      style: TextStyle(fontSize: 13,),
                      textAlign: TextAlign.justify,
                      )
                    )
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SizedBox(
                        
                        height: 30,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("   Master/Mistress in Charge - Academic Staff Members",
                          style: TextStyle(color: Colors.blue.shade400,fontSize: 14),
                          ),
                        ),
                      ),
                       const SizedBox(
                        height: 50,
                         child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("     " "\u2022" "  Mr. Venura Colombage/FOB",
                                textAlign: TextAlign.right,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("     " "\u2022" "  Ms. Aushadharie Vidanalage/FOB",
                                textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                         
                       ),
                      SizedBox(
                        height: 30,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("   Names of President /Vice President /Captian",
                          style: TextStyle(color: Colors.blue.shade400,fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 130,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Male Captain – Naveen Perera")),
                            Align(alignment:Alignment.bottomLeft, child: Text("     " "\u2022" "  Female Captain – Aaradhi Perera")),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Male Vice Captain – Sasindu Adhikari, Linuka Rathnappriya")),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Female Vice Captain – Umasha Jayarathne and Udari Bandara")),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  President – Vinsuka Gammanpila")),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("   Achievements",
                          style: TextStyle(color: Colors.blue.shade400,fontSize:15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.bottomLeft, child: Text("SLIIT Relay Competition – 2023", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Overall Runner-up (University Boys Category)")),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Overall 2nd Runer-up (University Girls Category)")),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  4 x 200m (University Boys Category) – Gold Medal")),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Medley Relay (University Boys Category) – Gold Medal")),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.bottomLeft, child: Text("SLTC Athletic Meet (2022)", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  2nd Runners up (Invitation Relay)")),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.bottomLeft, child: Text("NSBM U-Sports (2022)", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                            Align(alignment: Alignment.bottomLeft, child: Text("     " "\u2022" "  Mens Overall 2nd Runners up")),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 110,
                        right: 110,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  const BadmintonClubJoinForm(inputText: '',),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          elevation: 4,
                          ), 
                        child: const Text("Join Now"),
                        
                        ),
                      )
                      
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