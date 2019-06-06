
import 'package:flutter/material.dart';
import 'package:flutterdemotest/TestNotification.dart';

class thridpage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    addobserveNotivication();
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

void addobserveNotivication(){
  new NotificationListener(onNotification: (TestNotification n){
      print('===notification====${n}====');
  },);
}