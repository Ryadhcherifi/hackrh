import 'package:flutter/material.dart';

Widget FirstBar(BuildContext context, Size screensize) {
  return SizedBox(
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
                    offset: Offset(0, 3), // changes position of shadow
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
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white),
            width: screensize.width / 1.5,
            child: Text("Ok2"),
          )
        ]),
    height: 60,
    width: screensize.width,
  );
}
