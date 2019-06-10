import 'package:flutter/material.dart';
import 'package:flutterdemotest/fourthdetailsecondpage.dart';

class fourthdetailpage extends StatelessWidget{
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
//        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return fourthdetailsecondpage();
        }));
      },child: Text('点击返回按钮'),),
    );
  }
}