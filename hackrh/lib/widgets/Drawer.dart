import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CosDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
        height: screensize.height / 1.3,
        width: screensize.width / 3.5,
        decoration: BoxDecoration(
            color: Color.fromRGBO(31, 118, 138, 1),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(31, 118, 138, 1),
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: screensize.height / 10,
                      width: screensize.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(FontAwesomeIcons.tasks),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color:Color.fromRGBO(31, 118, 138, 1),
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: screensize.height / 10,
                      width: screensize.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(FontAwesomeIcons.pause),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(31, 118, 138, 1),
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: screensize.height / 10,
                      width: screensize.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.explore),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(31, 118, 138, 1),
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: screensize.height / 10,
                    width: screensize.width / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.settings),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
