import 'package:flutter/material.dart';

Widget ProfileAvatre(Size screensize, double largueur) {
  return Stack(
    alignment: Alignment.bottomRight,
    children: <Widget>[
      Container(
        color: Colors.white,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue,
            width: 1,
          ),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        height: screensize.width * (largueur / 360),
        width: screensize.width * (largueur / 360),
        decoration: BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
        ),
      ),
    ],
  );
}
