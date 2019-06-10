import 'package:flutter/material.dart';
class fourthdetailsecondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: createFourthPage(),
    );
  }
}
class createFourthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(),
      body: RaisedButton(onPressed: (){
        Navigator.pop(context);
      },child: Text('back now'),),
    );
  }
}