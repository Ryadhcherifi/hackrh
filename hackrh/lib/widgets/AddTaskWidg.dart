import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackrh/widgets/DropDown.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class AddTaskDial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddTask();
  }
}

class _AddTask extends State<AddTaskDial> {
  bool valMonday = false;
  bool valTuesday = false;
  bool valWednesday = false;
  DateTimePickerTheme _pickerTheme = DateTimePickerTheme(
    backgroundColor: Colors.white,
    itemTextStyle: TextStyle(color: Colors.black),
    showTitle: false,
  );
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    bool filledB = false;
    Size screensize = MediaQuery.of(context).size;

    return AlertDialog(
      title: Text("Add Task"),
      content: Container(
        height: screensize.height / 1.2,
        width: screensize.width / 1.2,
        child: ListView(children: <Widget>[
      Align(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          shadowColor: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: screensize.height / 10,
              child: TextField(
                onChanged: (String value) {
                  filledB = true;
                  setState(() {});
                },
                decoration: InputDecoration(
                    filled: filledB,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelText: filledB == true ? "" : "Name it!",
                    labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: filledB == true ? 0 : 15)),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: screensize.height / 5,
            child: TextField(
              onChanged: (String value) {},
              decoration: InputDecoration(
                  filled: filledB,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  labelText: filledB == true ? "" : "Description!",
                  labelStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: filledB == true ? 0 : 15)),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // [Monday] checkbox
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Important",
                style: TextStyle(fontSize: 10),
              ),
              Checkbox(
                value: valMonday,
                onChanged: (bool value) {
                  setState(() {
                    valMonday = value;
                    valTuesday = false;
                    valWednesday = false;
                  });
                },
              ),
            ],
          ),

          // [Tuesday] checkbox
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Normal", style: TextStyle(fontSize: 10)),
              Checkbox(
                value: valTuesday,
                onChanged: (bool value) {
                  setState(() {
                    valTuesday = value;
                    valMonday = false;
                    valWednesday = false;
                  });
                },
              ),
            ],
          ),

          // [Wednesday] checkbox
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Optional", style: TextStyle(fontSize: 10)),
              Checkbox(
                value: valWednesday,
                onChanged: (bool value) {
                  setState(() {
                    valWednesday = value;
                    valMonday = false;
                    valTuesday = false;
                  });
                },
              ),
            ],
          ),
        ],
      ),
       Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.topCenter,
            child: Text(
              "Time",
              style: TextStyle(
                color: Colors.orange,
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
          
      SizedBox(
        height: 20,
      ),
         GestureDetector(
            onTap: () {
            Navigator.pop(context);
            },
            child: Container(
              height: 35,
              width: screensize.width * (100 / 360),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
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
        ]),
      ),
    );
  }
}
