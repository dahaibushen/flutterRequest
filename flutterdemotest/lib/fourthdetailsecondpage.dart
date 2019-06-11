import 'package:flutter/material.dart';
import 'package:flutterdemotest/fourthdetailpage.dart';


class createFourthdetailsecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(),
      body: RaisedButton(onPressed: (){
        //疑问，这个返回，怎么出现的界面为空白呢
        Navigator.pop(context);
      },child: Text('back now'),),
    );
  }
}