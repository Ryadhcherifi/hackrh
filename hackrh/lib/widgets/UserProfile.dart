import 'package:flutter/material.dart';
import 'package:hackrh/widgets/ProfileAvatre.dart';

class UserProfile extends StatelessWidget {
  String _nom;
  double avatare;
  double row;
  UserProfile(this._nom, this.avatare, this.row);
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: screensize.width * avatare,
      width: screensize.width * row,
      child: Row(
        children: <Widget>[
          Container(
            height: screensize.width * avatare,
            width: screensize.width * avatare,
            child: ProfileAvatre(screensize, 15),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 4, 0, 0),
            child: Text(
              _nom,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
