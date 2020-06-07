import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackrh/widgets/PauseType.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddPause(),
    );
  }
}

class AddPause extends StatefulWidget {
  @override
  _AddPauseState createState() => _AddPauseState();
}

class _AddPauseState extends State<AddPause> {
  String _selectedsoustypegame;
  String _selectedduraction;
  List<String> _typegames = ["Monopoly", "Chess"];
  List<String> _durations = ["10min", "30 min", "1 h", "2h"];
  static Color blue1 = Color(0xff1F768A);
  static Color mijaune = Color(0xffFBB844);
  static Color blueclair = Color(0xff8AD4E2);
  static Color subtitles = Color(0xff8AD4E2).withOpacity(0.5019607843137255);
  static Color background = Color(0xff0C1D25).withOpacity(0.8509803921568627);
  DateTimePickerTheme _pickerTheme = DateTimePickerTheme(
    backgroundColor: background,
    itemTextStyle: TextStyle(color: mijaune),
    showTitle: false,
  );
  int selected = 0;
  DateTime _selectedatetime;
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    List<Widget> _pausestypes = [
      PauseType(Icons.chat, blue1, mijaune, "Chat", selected == 0),
      PauseType(Icons.videocam, blue1, mijaune, "Video Call", selected == 1),
      PauseType(Icons.videogame_asset, blue1, mijaune, "Games", selected == 2),
      PauseType(Icons.add_to_photos, blue1, mijaune, "Other", selected == 3),
    ];
    Size screensize = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: background,
      titlePadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
        decoration: BoxDecoration(),
        height: screensize.height * (500 / 640),
        width: screensize.width * (340 / 360),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Text(
                  "Create a new break",
                  style: TextStyle(
                    color: blue1,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Text(
                  "Select type",
                  style: TextStyle(
                    color: subtitles,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: screensize.width * (90 / 360),
                  width: screensize.width * (260 / 360),
                  child: ListView.separated(
                    separatorBuilder: (context, pos) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: screensize.width * (23 / 360)),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, pos) {
                      return GestureDetector(
                        onTap: () {
                          selected = pos;
                          setState(() {});
                        },
                        child: _pausestypes[pos],
                      );
                    },
                    itemCount: _pausestypes.length,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Text(
                  "Details",
                  style: TextStyle(
                    color: subtitles,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: subtitles.withOpacity(0.3686274509803922),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color.fromARGB(91, 0, 0, 0))),
                  alignment: Alignment.bottomLeft,
                  child: DropdownButton(
                    value: _selectedsoustypegame,
                    items: _typegames.map((type) {
                      return DropdownMenuItem(
                        child: Text(
                          type,
                          style: TextStyle(
                            color: mijaune,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      _selectedsoustypegame = val;
                      setState(() {});
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Text(
                  "Time",
                  style: TextStyle(
                    color: subtitles,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 120,
                alignment: Alignment.topCenter,
                child: DatePickerWidget(
                  onChange: (date, ints) {},
                  dateFormat: "dd-MM-yyyy",
                  initialDateTime: today,
                  minDateTime: today,
                  maxDateTime: DateTime(today.year, today.month + 1, 28),
                  pickerTheme: _pickerTheme,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 50, right: 50),
                height: 120,
                alignment: Alignment.topCenter,
                child: TimePickerWidget(
                  onChange: (date, ints) {},
                  dateFormat: "HH-mm",
                  initDateTime: today,
                  minDateTime: DateTime(today.year, today.month + 1, 28, 0, 0),
                  maxDateTime:
                      DateTime(today.year, today.month + 1, 28, 23, 59),
                  pickerTheme: _pickerTheme,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Text(
                  "Duration",
                  style: TextStyle(
                    color: subtitles,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: subtitles.withOpacity(0.3686274509803922),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color.fromARGB(91, 0, 0, 0))),
                  alignment: Alignment.bottomLeft,
                  child: DropdownButton(
                    value: _selectedsoustypegame,
                    items: _durations.map((type) {
                      return DropdownMenuItem(
                        child: Text(
                          type,
                          style: TextStyle(
                            color: mijaune,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      _selectedduraction = val;
                      setState(() {});
                    },
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  width: screensize.width * (306 / 360),
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffFBB844), blueclair],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    "Invite colleagues",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: screensize.width * (100 / 360),
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: blueclair,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
