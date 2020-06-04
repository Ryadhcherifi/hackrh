import 'package:flutter/material.dart';
import 'package:hackrh/widgets/Drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromRGBO(88, 88, 88, 1),
        drawer: CosDrawerWidget(),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) => ListView(children: <Widget>[
              SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: screensize.width / 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Icon(Icons.settings),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white),
                        width: screensize.width / 1.5,
                        child: Text("Ok2"),
                      )
                    ]),
                height: 60,
                width: screensize.width,
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  height: screensize.height / 5,
                  width: screensize.width / 2,
                  child: Text("Ok3"),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                        Align(
                          child: Text('ok'),
                        ),
                      ],
                    )),
              )
            ]),
          ),
        ));
  }
}
