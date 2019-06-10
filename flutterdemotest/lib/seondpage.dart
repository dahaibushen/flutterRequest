import 'package:flutter/material.dart';

class seondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: createsecond(),
    );
  }
}
class  createsecond extends StatefulWidget{
  @override
  notificationstate createState() => notificationstate();
}

class notificationstate extends State<createsecond>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: createNo(),
    );
  }
}
 class createNo extends StatefulWidget{
 @override
 nostate createState() => nostate();
}

class nostate extends State<createNo>{
  String _msg = '';
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NotificationListener<secondNotification>(
      onNotification: (notifi){
        setState(() {
          _msg = notifi.name + ' 9';
          print('=====${ _msg }====');
        });
      },
      child:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //不理解：这个地方使用 context 跟 con怎么结果不一样呢
            Builder(
              builder: (con){
                return RaisedButton(onPressed: (){
                  print('=====sss==${con}===:${context}');
                  secondNotification('hello').dispatch(con);
                },
                  child: Text('点击'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class secondNotification extends Notification{
  secondNotification(this.name);
  final String name;

}