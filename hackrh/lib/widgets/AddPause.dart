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
  DateTimePickerTheme _pickerTheme = DateTimePickerTheme(
    backgroundColor: Colors.white,
    itemTextStyle: TextStyle(color: Colors.black),
    showTitle: false,
  );
  String _selectedsoustypegame;
  List<String> _typegames = ["Monopoly", "Chess"];
  static Color blue1 = Color.fromARGB(255, 0, 144, 255);

  int selected = 0;
  DateTime _selectedatetime;
  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    List<Widget> _pausestypes = [
      PauseType(Icons.chat, Colors.white, blue1, "Chat", selected == 0),
      PauseType(
          Icons.videocam, Colors.white, blue1, "Video Call", selected == 1),
      PauseType(
          Icons.videogame_asset, Colors.white, blue1, "Games", selected == 2),
      PauseType(
          Icons.add_to_photos, Colors.white, blue1, "Other", selected == 3),
    ];
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: screensize.height * (473 / 640),
        width: screensize.height * (321 / 360),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: Text(
                "Create a new pause",
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
                "Type of the pause",
                style: TextStyle(
                  color: Color.fromARGB(127, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 25, right: 25),
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: screensize.width * (90 / 360),
                width: screensize.width * (260 / 360),
                child: ListView.separated(
                  separatorBuilder: (context, pos) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: screensize.width * (23 / 360)),
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
                  color: Color.fromARGB(127, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: screensize.width * (0 / 360),
              height: 40,
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 26, right: 26),
                padding: EdgeInsets.only(left: 20),
                width: screensize.width * (0 / 360),
                decoration: BoxDecoration(
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
                          color: Color(0xff001321),
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
                  color: Color.fromARGB(127, 0, 0, 0),
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
                maxDateTime: DateTime(today.year, today.month + 1, 28, 23, 59),
                pickerTheme: _pickerTheme,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
