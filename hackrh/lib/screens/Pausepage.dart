import "package:flutter/material.dart";
import 'package:hackrh/widgets/AddPause.dart';
import 'package:hackrh/widgets/Drawer.dart';

class Pausepage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double szimg = 60.0;
    return Scaffold(
      drawer: CosDrawerWidget(),
          body : SingleChildScrollView(
        child: Container(
            //color: Colors.orangeAccent,
            color: Color.fromRGBO(251, 184, 68, 1),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.orangeAccent,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: size.height / 1.3,
                            width: size.width,
                            //color: Colors.teal[800],
                            decoration: BoxDecoration(
                              //color: Colors.teal[800],
                              color: Color.fromRGBO(31, 118, 138, 1),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(40.0),
                                bottomLeft: Radius.circular(40.0),
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.teal[800],
                                  //color: Color.fromARGB(255, 112, 112, 112),
                                  offset: Offset(1.0, 4.0),
                                  blurRadius: 10.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          15.0, 40.0, 0.0, 0.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: new Image.asset(
                                              'assets/images/cr7.png', //pour tester change le nom de l'image
                                              height: szimg,
                                              width: szimg,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(width: 20.0),
                                          Container(
                                            height: size.height / 14.0,
                                            //width: 260,
                                            width: size.width / 1.4,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[200],
                                              //color: Color.fromARGB(255, 112, 112, 112),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Center(
                                    child: Container(
                                  child: Text('Explore Breaks',
                                      style: TextStyle(
                                        color: Colors.teal[900],
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                )),
                                SizedBox(height: 20.0),
                                Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          breakbuilder(size),
                                          breakbuilder(size),
                                          breakbuilder(size),
                                          breakbuilder(size),
                                          breakbuilder(size),
                                          breakbuilder(size),
                                        ],
                                      ),
                                    )),
                                SizedBox(height: size.height / 30.0),
                                Center(
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Container(
                                          height: size.height / 16.0,
                                          //width: size.width/6.0,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Colors.orangeAccent,
                                                  Colors.teal[200]
                                                ],
                                                //color: Color.fromARGB(255, 112, 112, 112),
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  child: Builder(
                                                    builder: (BuildContext) {
                                                      return AddPause();
                                                    },
                                                  ));
                                            },
                                            child: Center(
                                              child: Text(
                                                "CREATE BREAK",
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.teal[600]
                                                    //color: Color.fromARGB(255, 112, 112, 112),
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Center(
                    child: Container(
                  child: Text(
                    'Join us',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.teal[
                          800], /*color: Color.fromARGB(255, 112, 112, 112)*/
                    ),
                  ),
                )),
                SizedBox(height: 20.0),
                Container(
                    //padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                      boxbuilder(size),
                    ],
                  ),
                ))
              ],
            )),
      ),
    );
  }
}

Widget boxbuilder(Size size) {
  return Padding(
    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
    child: Container(
      height: size.height / 6.5,
      width: size.width / 3.2,
      decoration: BoxDecoration(
          color: Colors.blue[200],
          //color: Color.fromARGB(88,164,181, 1),
          borderRadius: BorderRadius.circular(20.0)),
    ),
  );
}

Widget breakbuilder(Size size) {
  return Padding(
    padding: EdgeInsets.fromLTRB(00.0, 0.0, 40.0, 0.0),
    child: Container(
      height: size.height / 2.8,
      width: size.width / 1.5,
      decoration: BoxDecoration(
          color: Colors.teal[900],
          //color: Color.fromARGB(255, 112, 112, 112),
          borderRadius: BorderRadius.circular(20.0)),
    ),
  );
}
