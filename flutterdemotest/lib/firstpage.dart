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

      //切换navigationbar 选中的状态
      bottomNavigationBar: BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.access_time), title: Text('小学')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.print), title: Text('初中')),
          new BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('高中')),
        ],
        type: BottomNavigationBarType.fixed,
//设定当前选中的下标
        currentIndex: _currentIndex,
//        onTap: currentOnTap(_currentIndex),
        onTap: (int num) {
          print('=====22222222===:${num}');
          setState(() {
            _currentIndex = num;
          });
        },
//        //设定当前选中的下标
//        currentIndex: _currentIndex,
      ),
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