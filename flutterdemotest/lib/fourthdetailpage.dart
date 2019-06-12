import 'package:flutter/material.dart';
import 'package:flutterdemotest/fourthdetailsecondpage.dart';


class createFourthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
print('=====fourth fourth fourth =====');
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(),
      body: RaisedButton(onPressed: (){
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return   createFourthdetailsecondPage();
        }));
      },child: Text('点击返回按钮'),),
    );
  }
}

//展示Dialog
void showAlertDialog(BuildContext context){
  showDialog(context: context,
     builder: (context)=> new AlertDialog(
       title: Text('展示标题'),
       content: Text('展示内容'),
       actions: <Widget>[
         new FlatButton(onPressed: (){
           print('====11111=====');
         }, child: Text('第一个按钮')),
         new FlatButton(onPressed: (){
           print('====22222=====');
         }, child: Text('第二个按钮'))
       ],
     ),
  );
}