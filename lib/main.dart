import 'dart:io';

import 'package:dynamicview_example/Body/MyBodyPage.dart';
import 'package:dynamicview_example/Scaffold//MyScaffoldPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyScaffoldPage(),
    );
  }
}


