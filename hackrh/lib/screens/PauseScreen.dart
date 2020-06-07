import "package:flutter/material.dart";
import 'package:hackrh/screens/PauseDetails.dart';
import 'package:hackrh/widgets/AddPause.dart';
import 'package:hackrh/widgets/FirstBar.dart';
import 'package:hackrh/widgets/UserProfile.dart';

class PauseScreen extends StatefulWidget {
  @override
  _PauseScreenState createState() => _PauseScreenState();
}

class _PauseScreenState extends State<PauseScreen> {
  String _typepause = "Game";
  String _soustype = "chess games";
  String _init = "nabil";
  String _timetostart = "5min";
  List<Widget> _userspause = [
    UserProfile("Ryadh cherifi", 43 / 360, 230 / 360)
  ];
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            FirstBar(context, screensize),
            Container(
              margin: EdgeInsets.only(
                  top: screensize.height * 26 / 640,
                  left: screensize.width * (26 / 360),
                  right: screensize.width * (26 / 360),
                  bottom: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      "Pauses",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      addpause(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 17, 122, 227),
                                Color.fromARGB(255, 15, 75, 136)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          shape: BoxShape.circle,
                        ),
                        height: screensize.width * (44 / 360),
                        width: screensize.width * (44 / 360),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: screensize.width * (30 / 360),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              width: screensize.width * (308 / 360),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      _typepause + " Pause",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      _soustype + " Created by " + _init,
                      style: TextStyle(
                        color: Color.fromARGB(92, 0, 0, 0),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Starts in " + _timetostart,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 124, 220),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: screensize.height * (231 / 640),
                    margin: EdgeInsets.only(
                      top: 10,
                      left: screensize.width * (31 / 360),
                    ),
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, pos) {
                        return _userspause[0];
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      height: screensize.height * (43 / 640),
                      width: screensize.width * (83 / 360),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 17, 122, 227),
                            Color.fromARGB(255, 15, 75, 136)
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Join",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void addpause(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return PauseDetails();
      });
}
