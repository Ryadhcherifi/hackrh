import 'package:flutter/material.dart';

class DropDownWid extends StatefulWidget {
  final Size screensize;
    DropDownWid(this.screensize) {  } 

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DropDownState();
  }

}

class _DropDownState extends State<DropDownWid> {
  String dropdownValue = 'Important';

  @override
  Widget build(BuildContext context) {

    return Container(
      height: widget.screensize.height/10,
      width: widget.screensize.width/8,
        child: DropdownButton<String>(
          isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.child_care),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
                width: widget.screensize.width/8,
          height: 2,
          color: Colors.blue,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Very Important', 'Important', 'Casual', 'Optional']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}