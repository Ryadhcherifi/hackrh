import 'package:flutter/material.dart';

Widget ProfileAvatre(Size screensize, double largueur) {
  Color avatar = Color(0xff58A4B5).withOpacity(0.3686274509803922);
  Color mijaune = Color(0xffFBB844);
  return Stack(
    alignment: Alignment.bottomRight,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: avatar,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
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
