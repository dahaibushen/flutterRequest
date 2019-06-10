import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';//httpClient请求方式
import 'package:flutterdemotest/httprequestpage.dart';
import 'package:flutterdemotest/modelpage.dart';
import 'package:flutterdemotest/storesmodel_entity.dart';





class firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _httpClient();
    return MaterialApp(
      title: '111111',
      home: createHome(),
    );
  }
}


//如果没有给方法必须是系统控件里的，那，自创的怎么加进去呢
class createHome extends StatefulWidget{

  @override
   homePageState createState() => new homePageState();
}

class homePageState extends State<createHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: createNotification(),
    );
  }
}

class createNotification extends StatefulWidget{
  @override
  notificationState createState() => notificationState();
}

class notificationState extends State<createNotification>{
  String _msg = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return NotificationListener<MyNotification>(
        onNotification: (notification){
          setState(() {
           _msg +=notification.msg+' 2';
           print('=====444444==:${_msg}======');
          });
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Builder(
                builder: (context){
                  return RaisedButton(onPressed: (){
                    MyNotification('hello').dispatch(context);
                  },
                    child: Text('点击'),
                  );
                },
              )
            ],
          ),
        )
    );
  }
}


//网络请求方法
void _httpClient()  {

  //疑问：这个有类方法 跟 实例方法吗 难道是static为类吗  get 请求
  getRequetData((data){
    print('33333====:${data}====');
   Map<String ,dynamic> jsondata = data;
//   var stores = new  storesmodel_entity.fromJson(jsondata);


//    modelpage detailmodel = JSON.
  });//http://www.dianping.com

//post请求
//postRequestDataWithCallBack((aaa){
//  print('=====${aaa}======');
//});

}


void _createmodel(){
   var detailmodel = new FlutterModel('东湖高新区', '小明');
   print('=====:${detailmodel.address}====:${detailmodel.name}=====');
}

class MyNotification extends Notification {
  MyNotification(this.msg);

  final String msg;
}