import 'package:flutter/material.dart';
import 'package:hackrh/widgets/UserProfile.dart';

class PauseDetails extends StatefulWidget {
  @override
  _PauseDetailsState createState() => _PauseDetailsState();
}

class _PauseDetailsState extends State<PauseDetails> {
  static Color blue1 = Color(0xff1F768A);
  static Color mijaune = Color(0xffFBB844);
  static Color blueclair = Color(0xff8AD4E2);
  static Color subtitles = Color(0xff8AD4E2).withOpacity(0.3607843137254902);
  static Color background = Color(0xff0C1D25).withOpacity(0.4392156862745098);
  static Color avatar = Color(0xff58A4B5).withOpacity(0.3686274509803922);
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

    return AlertDialog(
      backgroundColor: background,
      titlePadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              _typepause + " Break",
              style: TextStyle(
                  color: blueclair, fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              _soustype + " Created by " + _init,
              style: TextStyle(
                color: subtitles,
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
                  color: mijaune, fontSize: 12, fontWeight: FontWeight.bold),
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
                    blueclair,
                    blueclair,
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
    );
  }
}
