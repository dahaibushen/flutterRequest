
import 'package:flutter/material.dart';
import 'package:flutterdemotest/TestNotification.dart';

class secondpage extends  StatelessWidget{
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
        child: RaisedButton(onPressed: (){
          new TestNotification('发通知啦').dispatch(context);
          print('======go go go======');
        },
          child: Text('点击按钮'),
        )
      ),
    );
  }
}

void addobserveNotivication(){

  new NotificationListener(onNotification: (TestNotification n){
    print('===notification====${n}====');
       ScaffoldState().context.toString();
       return true;
  },
   child: new Text('11122223333'),
  
  );
}


