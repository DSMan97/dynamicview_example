import 'package:flutter/material.dart';

class MyScaffoldPage extends StatefulWidget {
  MyScaffoldPage();

  @override
  _MyScaffoldPageState createState() => _MyScaffoldPageState();
}

enum Pages{
  Page1, Page2, Page3,
}

class _MyScaffoldPageState extends State<MyScaffoldPage> {

  Pages pages=Pages.Page1;
  String url =
      "http://www.textures4photoshop.com/tex/thumbs/fireball-PNG-transparent-background-thumb35.png";

  @override
  Widget build(BuildContext context) {
    if(pages==Pages.Page1){
      return Scaffold(
        appBar: AppBar(
          title: Text('Page 1 Scaffold'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text("Page 1",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50.0),),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            setState(() {
              pages = Pages.Page2;
            });
          },
          child: Icon(Icons.arrow_forward),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }else if(pages==Pages.Page2){
      return Scaffold(
        appBar: AppBar(
          title: Text('Page 2 Scaffold'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 0.0),
                child: Center(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Page 2',
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
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            setState(() {
              pages = Pages.Page3;
            });
          },
          child: Icon(Icons.arrow_forward),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );

    }else if(pages==Pages.Page3){

      return Scaffold(
        appBar: AppBar(
          title: Text('Page 3 Scaffold'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
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
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              pages = Pages.Page1;
            });
          },
          child: Icon(Icons.arrow_forward),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );

    }

  }


}