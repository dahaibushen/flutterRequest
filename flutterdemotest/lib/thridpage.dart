
import 'package:flutter/material.dart';
import 'package:flutterdemotest/TestNotification.dart';
import 'package:shared_preferences/shared_preferences.dart';

final String KEYSTING ='KEYSTRING';

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
        child: Column(
          children: <Widget>[
            RaisedButton(onPressed: (){
              
            },child: Text('444444444'),),

            RaisedButton(onPressed: (){
              saveString();
            },
            child: Text('保存数据'),),

            RaisedButton(onPressed: (){
              print('======${readString()}====');
            },
              child: Text('读取数据'),),
          ],
        ),
      ),
    );
  }
}


Future saveString() async{
  SharedPreferences share = await SharedPreferences.getInstance();
  share.setString(KEYSTING, '这里是需要保存的数据');
}


Future<String> readString() async{
    SharedPreferences share = await SharedPreferences.getInstance();

    String string = share.get(KEYSTING);
    //疑问：如何把方法里的值，返回出去
    return string;
}

