import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  String title = "Page 1";
  Widget mBody;
  int currentPage = 1;
  IconData ionFAB;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: gotoNext(currentPage),
      floatingActionButton: FloatingActionButton(
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
      case 2:
        title = "Page 2";
        mBody = Center(
          child: Text(title),
        );
        ionFAB=Icons.shopping_cart;
        break;
      case 3:
        title = "Page 3";
        mBody = Center(
          child: Text(title),
        );
        ionFAB=Icons.arrow_forward;
        break;
      default :
        title = "Page 1";
        mBody = Center(
          child: Text(title),
        );
        ionFAB=Icons.arrow_forward;
        break;
    }
    
    return  mBody = Center(
      child: Text(title),
    );
  }
}
