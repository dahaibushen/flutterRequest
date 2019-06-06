import 'package:flutter/material.dart';
import 'package:flutterdemotest/firstpage.dart';
import 'package:flutterdemotest/seondpage.dart';
import 'package:flutterdemotest/thridpage.dart';

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
  var appbartitles = ['小学','中学','高中'];
  var  _pagelit = [new firstpage(),new secondpage(),new thridpage()];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pagelit[_tabindex],
      bottomNavigationBar: new BottomNavigationBar(
          items:<BottomNavigationBarItem>[
            new BottomNavigationBarItem(icon: Icon(Icons.add),title: Text('小学')),
            new BottomNavigationBarItem(icon: Icon(Icons.print),title: Text('初中')),
            new BottomNavigationBarItem(icon: Icon(Icons.map),title: Text('高中')),
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
