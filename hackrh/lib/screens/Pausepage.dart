import "package:flutter/material.dart";


class Pausepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize= MediaQuery.of(context).size;
    print(screensize);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20.0,20.0,0.0,0.0),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: new Image.asset(
                    'assets/images/pcv4.jpg',//nom de l'image again
                    height: 80,
                    width: 80,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 20.0),
                Container(
                  height: 50,
                  //width: 260,
                  width: screensize.width/1.7,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(height:10.0),
          Container(
            padding: EdgeInsets.fromLTRB(20.0,20.0,0.0,0.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Pauses', style: TextStyle(fontSize:25.0, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(/*width:160.0*/width: screensize.width/2.0),
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue[800],
                  child: new IconButton(
                    icon: new Icon(Icons.add, size: 30.0),
                    color: Colors.white,
                    onPressed: () { /* Your code */ },
                  )
                ),
              ],
            ),
          ),
          SizedBox(height:15.0),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20),
            child: Column(
              children: <Widget>[
                pausebuilder(context),
                pausebuilder(context),
                pausebuilder(context),
                pausebuilder(context),
                pausebuilder(context),
                pausebuilder(context),
                pausebuilder(context),
              ],
            ),
          )
        ],
      )
    );
  }
}

  Widget pausebuilder(BuildContext context){
    var screensize= MediaQuery.of(context).size;
    return Material(
      //onPressed:(){}
      color: Colors.grey,
      child: Container(
        margin: EdgeInsets.only(top: 8,bottom: 8),
        padding: EdgeInsets.all(16),
        height: screensize.height/7.0 ,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
          ]
        ),
        child: Row(
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Game Pause', style: TextStyle(fontWeight : FontWeight.bold, fontSize: 20.0, color: Colors.black)),
                Spacer(),
                Text('Chess Game', style: TextStyle(fontSize: 16.0, color: Colors.grey[700])),
                Spacer(),
                Text('4 Cowerkers participating', style: TextStyle(fontWeight : FontWeight.bold, fontSize: 10.0, color: Colors.red)),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                Spacer(),
                Spacer(),
                Text('Starts in 5min', style: TextStyle(fontSize: 16.0, color: Colors.blue[600])),
              ],
            )
          ],
        ),
      )
    );
  }
