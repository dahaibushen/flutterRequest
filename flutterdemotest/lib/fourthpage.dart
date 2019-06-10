import 'package:flutter/material.dart';
import 'package:flutterdemotest/fourthdetailpage.dart';

class fourthpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  createFourPage(),
    );
  }
}

class createFourPage extends StatefulWidget{
  @override
  fourpagestate createState() => fourpagestate();
}

class fourpagestate extends State<createFourPage>{
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //疑问：如何设置cell高度呢
      
      body: new ListView.separated(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          itemBuilder: (BuildContext context, int index) {
            //Container 容器 可以试着做一些别的控件的载体
            return new Container(
              alignment: Alignment.center,
              child: new FlatButton(onPressed: (){
                print('=====select at ${index}=====');
                clickatindex(index,context);
              },
                  onHighlightChanged:(bool){

                  },
                  color: Colors.green,
                  child: Text('${index}')
              ),
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              height: 50.0,

            );

          },
          separatorBuilder: (BuildContext context, int index) {
            return new Container(height: 1.0, color: Colors.black);
          },
          itemCount: 40),
    );
  }
}

void clickatindex(int selectnum,BuildContext context){
  //通过router跳转到指定界面  这个地方是present 还是push 呢
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return fourthdetailpage();
  }));

}

Widget _getContainer(String test ,IconData icon){
  return new Container(
    height: 80.0,
    color: Colors.green,
    child: ListTile(
      leading: Icon(Icons.share),
    )
    //如果这里增加一条横线呢，这个如何处理

  );
}

