import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';//httpClient请求方式
import 'package:flutterdemotest/httprequestpage.dart';
import 'package:flutterdemotest/modelpage.dart';


class firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '111111',
      home: createHome(),

    );
  }
}


//如果没有给方法必须是系统控件里的，那，自创的怎么加进去呢
class createHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _httpClient();
    _createmodel();
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items:[
        new BottomNavigationBarItem(icon: Icon(Icons.access_time),title: Text('银行')),
        new BottomNavigationBarItem(icon: Icon(Icons.print),title: Text('农庄')),
        new BottomNavigationBarItem(icon: Icon(Icons.map),title: Text('学校')),
      ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

//网络请求方法
void _httpClient()  {

  //疑问：这个有类方法 跟 实例方法吗 难道是static为类吗
  getRequetData((data){
    print('33333====:${data}====');
  });//http://www.dianping.com


//postRequestDataWithCallBack((aaa){
//  print('=====${aaa}======');
//});

}

void _createmodel(){
   var detailmodel = new FlutterModel('东湖高新区', '小明');
   print('=====:${detailmodel.address}====:${detailmodel.name}=====');
}