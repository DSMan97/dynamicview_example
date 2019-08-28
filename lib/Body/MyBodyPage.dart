import 'package:flutter/material.dart';

class MyBodyPage extends StatefulWidget {
  MyBodyPage();

  @override
  _MyBodyPageState createState() => _MyBodyPageState();
}

class _MyBodyPageState extends State<MyBodyPage> {
  String title = "";
  Widget mBody;
  int currentPage = 1;
  IconData ionFAB;
  Color mColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: mColor,
      ),
      body: gotoNext(currentPage),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mColor,
        onPressed: () {
          currentPage++;
          print(currentPage);
          setState(() {
            if (currentPage > 3) {
              currentPage = 1;
            }
            gotoNext(currentPage);
          });
        },
        child: Icon(ionFAB),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget gotoNext(int currentPage) {
    switch (currentPage) {
    //Pages
      case 2: //Page 2
        title = "Page 2";
        ionFAB = Icons.shop;
        mColor=Colors.green;
        return mBody = Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 0.0),
                child: Center(
                  child: Container(
                    color: mColor,
                    child: Center(
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white,fontSize: 24.0),
                      ),
                    ),
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ),
            ],
          ),
        );
        break;

      case 3: //Page 3
        title = "Page 3";
        mColor = Colors.blueAccent;
        ionFAB = Icons.replay;
        String url =
            "http://www.textures4photoshop.com/tex/thumbs/fireball-PNG-transparent-background-thumb35.png";
        return mBody = Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 0.0),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(url,
                      scale: 1.0),
                  radius: 50.0,
                ),
              ),
              Text('Cargando Network Img',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
            ],
          ),
        );
        break;

      default: //Page 1
        title = "Page 1";
        mColor = Colors.red;
        ionFAB = Icons.arrow_forward;
        return mBody = Center(
          child: Text(title,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50.0),),
        );
        break;
    }
  }
}