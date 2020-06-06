import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackrh/widgets/DropDown.dart';

class AddTaskDia extends StatefulWidget {
  List<bool> checkList = [false, false, false];
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddTask();
  }
}

class _AddTask extends State<AddTaskDia> {
  Widget CheckBoxPrior(String priority, int checkInt) {
    return Column(
      children: <Widget>[
        Text(priority),
        CheckboxListTile(
          
          value: widget.checkList[checkInt],
          onChanged: (bool check) {
            setState(() {
              int i = 0;
              for (i = 0; i == 2; i++) {
                print("wtf!");
                widget.checkList[i] = false;
                CheckBoxPrior("Middle", 1);
              }
              widget.checkList[checkInt] = check;
            });
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool filledB = false;
    Size screensize = MediaQuery.of(context).size;

    // TODO: implement build
    return AlertDialog(
      title: Text("Add Task"),
      content: SingleChildScrollView(
              child: Container(
          height: screensize.height / 1.2,
          width: screensize.width / 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  shadowColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: screensize.height / 10,
                      child: TextField(
                        onChanged: (String value) {
                          filledB = true;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                            filled: filledB,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: filledB == true ? "" : "Name it!",
                            labelStyle: TextStyle(
                                color: Colors.blue,
                                fontSize: filledB == true ? 0 : 15)),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: screensize.height / 5,
                    child: TextField(
                      onChanged: (String value) {
                       
                      },
                      decoration: InputDecoration(
                          filled: filledB,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          labelText: filledB == true ? "" : "Description!",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: filledB == true ? 0 : 15)),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    print("ok");
                  });
                },
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(child:DropDownWid(screensize)),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
