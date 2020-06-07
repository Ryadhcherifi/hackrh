import "package:flutter/material.dart";
import 'package:hackrh/widgets/AddTask.dart';
import 'package:hackrh/widgets/AddTaskWidg.dart';
import 'package:hackrh/widgets/Drawer.dart';
import 'package:hackrh/widgets/TasksView.dart';

class Taskpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double szimg = 60.0;
    double szwlcm = 18.0;
    double sznd = 20.0;
    double szagd = 20.0;
    if (screensize.height <= 600) {
      szimg = 60.0;
      szwlcm = 12.0;
      sznd = 18.0;
      szagd = 18.0;
    }
    if (screensize.height > 600.0) {
      if (screensize.height < 900.0) {
        szimg = 70.0;
        szwlcm = 18.0;
        sznd = 20.0;
        szagd = 20.0;
      }
      if (screensize.height >= 900.0) {
        szimg = 70.0;
        szwlcm = 18.0;
        sznd = 20.0;
        szagd = 20.0;
      }
    }
    return Scaffold(
      drawer: CosDrawerWidget(),
        //backgroundColor: Colors.grey,
        backgroundColor: Color.fromRGBO(31, 118, 138, 1),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: new Image.asset(
                      'assets/images/cr7.png', //pour tester change le nom de l'image
                      height: szimg,
                      width: szimg,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    height: screensize.height / 14.0,
                    //width: 260,
                    width: screensize.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      //color: Color.fromARGB(255, 112, 112, 112),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
              child: RichText(
                  text: TextSpan(
                      text: 'Welcome',
                      style: TextStyle(color: Colors.black, fontSize: szwlcm),
                      children: <TextSpan>[
                    TextSpan(
                        text: ' M.Nabil',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  ])),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
              child: Text(
                'Nearest deadlines',
                style: TextStyle(fontSize: sznd, color: Colors.white),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              color: Colors.teal[800],
              child: Column(
                children: <Widget>[
                  taskbuilder(context),
                  taskbuilder(context),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'My Agenda',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(/*width:160.0*/ width: screensize.width / 3.0),
                  Material(
                      //child: Container(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.blue[200],
                      child: new IconButton(
                        icon: new Icon(Icons.add, size: 30.0),
                        color: Colors.white,
                        onPressed: () {
                          showDialog(
                              context: context,
                              child: Builder(
                                builder: (BuildContext context) {
                                  return AddTaskDial();
                                },
                              ));
                        },
                      )
                      //),
                      ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              color: Colors.teal[800],
              child: Column(
                children: <Widget>[
                  taskbuilder(context),
                  taskbuilder(context),
                  taskbuilder(context),
                  taskbuilder(context),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget taskbuilder(BuildContext context) {
  var screensize = MediaQuery.of(context).size;
  double stask = 20.0;
  double sdecp = 16.0;
  double sprop = 10.0;
  double sdeli = 12.0;
  if (screensize.height <= 600) {
    stask = 10.0;
    sdecp = 9.0;
    sprop = 9.0;
    sdeli = 9.0;
  }
  if (screensize.height > 600.0) {
    if (screensize.height < 900.0) {
      stask = 15.0;
      sdecp = 11.0;
      sprop = 8.0;
      sdeli = 8.0;
    }
    if (screensize.height >= 900.0) {
      stask = 18.0;
      sdecp = 14.0;
      sprop = 10.0;
      sdeli = 10.0;
    }
  }
  return Material(
      
      color: Color.fromRGBO(31, 118, 138, 1),
      child: GestureDetector(onTap: (){
        showDialog(context: context,
        child : Builder( builder :(BuildContext context){
          return TasksView();
        }));
      },
              child: Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          padding: EdgeInsets.all(16),
          height: screensize.height / 7.0,
          decoration: BoxDecoration(
              //color: Colors.white,
              color: Color.fromRGBO(88, 164, 181, 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
              ]),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Task 1',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: stask,
                          color: Colors.black)),
                  Spacer(),
                  Text('Description',
                      style: TextStyle(fontSize: sdecp, color: Colors.grey[700])),
                  Spacer(),
                  Text('Priority : High',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: sprop,
                          color: Colors.red)),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(),
                  Spacer(),
                  Text('Deadline 12/07/2020 at 12:00',
                      style: TextStyle(fontSize: sdeli, color: Colors.red)),
                ],
              )
            ],
          ),
        ),
      ));
}
