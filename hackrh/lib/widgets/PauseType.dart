import 'package:flutter/material.dart';

class PauseType extends StatelessWidget {
  IconData icon;
  Color first;
  Color second;
  String nom;
  bool selected;
  PauseType(this.icon, this.first, this.second, this.nom, this.selected);
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: screensize.width * (47 / 360),
          width: screensize.width * (47 / 360),
          decoration: BoxDecoration(
            border: Border.all(color: second),
            color: selected ? second : first,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(
              icon,
              color: selected ? Colors.white : second,
              size: screensize.width * (20 / 360),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            nom,
            style: TextStyle(
              color: selected ? second : first,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
