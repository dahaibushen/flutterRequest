import 'package:flutter/material.dart';
import 'package:flutterdemotest/firstpage.dart';
import 'package:flutterdemotest/seondpage.dart';
import 'package:flutterdemotest/thridpage.dart';
import 'package:flutterdemotest/fourthpage.dart';
import 'package:flutterdemotest/fourthdetailsecondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your applicatio
        primarySwatch: Colors.orange,
      ),
      routes: <String ,WidgetBuilder>{
          '/firstpage': (context)=>new firstpage(),
        '/fourthdetailpage': (context)=>new fourthpage(),
        '/fourthdetailsecondpage': (context)=>new createFourthdetailsecondPage(),

      },
//      home: new firstpage(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class  MyHomePage extends StatefulWidget{

  MyHomePage({ Key key, this.title}) : super(key: key);
  final String title;
  @override
  MyHomePageState createState() => new MyHomePageState();


}

class  MyHomePageState extends State<MyHomePage>{
  int _tabindex = 0;
  var  _pagelit = [new createsecond(),new thridpage(),new fourthpage()];//new firstpage(),


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pagelit[_tabindex],
      bottomNavigationBar: new BottomNavigationBar(
          items:<BottomNavigationBarItem>[
//            new BottomNavigationBarItem(icon: Icon(Icons.add),title: Text('小学')),
            new BottomNavigationBarItem(icon: Icon(Icons.print),title: Text('初中')),
            new BottomNavigationBarItem(icon: Icon(Icons.map),title: Text('高中')),
            new BottomNavigationBarItem(icon: Icon(Icons.accessibility),title: Text('大学')),
          ],
        currentIndex: _tabindex,
        onTap: (index){
            setState(() {
              _tabindex = index;
            });
        },
      ),
    );
  }
}

//class _TestNotificationState extends State<MyHomePage>{
//
//}




class MyNotification extends Notification {
  MyNotification(this.msg);

  final String msg;
}