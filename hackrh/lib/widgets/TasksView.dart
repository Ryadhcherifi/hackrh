import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    // TODO: implement build
    return AlertDialog(

      scrollable: true,
      titlePadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
        height: screensize.height / 1.5,
        width: screensize.width / 1.2,
        child: ListView(
          children: <Widget>[
            
            Text("Task"),
            Card(
              shadowColor: Colors.blue,
              child: Container(
                alignment: Alignment.center,
                height: screensize.height / 5,
                width: screensize.width / 1.4,
                child: Text("Description of Task"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.eye,
                  size: 20,
                  color: Colors.blue,
                ),
                Text("M.Hamid")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ClipRRect(
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Text('OK')),
                  borderRadius: BorderRadius.circular(20),
                ),
                Card(
                  shadowColor: Colors.blue,
                  child: Container(
                    alignment: Alignment.center,
                    height: screensize.height / 10,
                    width: screensize.width / 2,
                    child: Text(
                      "Description of Task",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(FontAwesomeIcons.edit),
                Icon(Icons.delete)
              ],
            )
          ],
        ),
      ),
    );
  }
}
