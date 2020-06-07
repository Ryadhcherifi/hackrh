import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool valMonday = false;
  bool valTuesday = false;
  bool valWednesday = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Group Checkboxes"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // [Monday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Monday"),
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
                  Text("Tuesday"),
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
                  Text("Wednesday"),
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
        ));
  }
}