
import 'package:flutter/material.dart';

class thridpage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home: createSecondPage(),
    );
  }
}

class createSecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('99999999'),
      ),
    );
  }
}