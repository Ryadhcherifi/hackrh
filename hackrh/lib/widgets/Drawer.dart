import 'package:flutter/material.dart';

class CosDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
        height: screensize.height / 1.3,
        width: screensize.width / 3.5,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
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
                    child: Text("OK"),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
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
                    child: Text("OK"),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
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
                    child: Text("OK"),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
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
                    child: Text("OK"),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
