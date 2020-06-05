import "package:flutter/material.dart";
import 'package:hackrh/widgets/FirstBar.dart';

class AccountSvreen extends StatefulWidget {
  @override
  _AccountSvreenState createState() => _AccountSvreenState();
}

class _AccountSvreenState extends State<AccountSvreen> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              FirstBar(context, screensize),
              Container(
                height: screensize.width * (59 / 180),
                width: screensize.width * (59 / 180),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: screensize.width * (59 / 180),
                  width: screensize.width * (59 / 180),
                  child: Stack(
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
                        height: screensize.width * (41 / 360),
                        width: screensize.width * (41 / 360),
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
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                width: screensize.width * (199 / 360),
                height: screensize.height * (27 / 640),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: screensize.height * (34 / 640)),
                width: screensize.width * (133 / 360),
                height: screensize.height * (13 / 640),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Text(
                "Info",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Container(
                width: screensize.width * (306 / 360),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                margin: EdgeInsets.only(bottom: screensize.height * (17 / 640)),
                child: Column(
                  children: <Widget>[
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                    Align(
                      child: Text('ok'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
