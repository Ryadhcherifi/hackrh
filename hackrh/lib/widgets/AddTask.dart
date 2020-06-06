import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddTaskDia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddTask();
  }
}

class _AddTask extends State<AddTaskDia> {
  @override
  Widget build(BuildContext context) {
    bool filledB = false;
    Size screensize = MediaQuery.of(context).size;

    // TODO: implement build
    return AlertDialog(
      title: Text("Add Task"),
      content: Container(
        height: screensize.height / 1.2,
        width: screensize.width / 1.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: screensize.height / 5,
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
                          labelText: filledB == true ? "" : "Description!",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: filledB == true ? 0 : 15)),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
