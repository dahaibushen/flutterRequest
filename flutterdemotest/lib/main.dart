import 'package:flutter/material.dart';
import 'package:flutterdemotest/firstpage.dart';

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
      home: new firstpage(),
//      MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _count = 0;
  void click(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

     body:Column(
       mainAxisAlignment: MainAxisAlignment.center,
         textDirection:TextDirection.rtl,

          children: <Widget>[
            Text('展示文本:$_count'),
            RaisedButton(onPressed: (){
              click();
            },
              padding: EdgeInsetsDirectional.only(start: 100.0,top: 100.0,bottom: 100.0,end: 100.0),
              child: Text('点击这里'),
            ),
          ],
      ),
    );
  }
}



//
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  //flutter内部自己感知接受数值变化，以及flutter接受外部调用改变自身参数值得变化
//  void _incrementCounter() {
//    setState(() {
////接受参数值得变化
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ),
//    );
//  }
//}
