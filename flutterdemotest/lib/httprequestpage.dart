import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutterdemotest/storesmodel_entity.dart';



void getRequetData (Function callback) async {

  var responseBody;
  var httpClient = new HttpClient();
  var request = await httpClient.getUrl(Uri.parse('http://www.dianping.com/bar/search?cityId=16'));
  var response = await request.close();
  if(response.statusCode == 200){
    responseBody = await response.transform(utf8.decoder).join();

    //转换为json同时生成map数据
    Map converDataToJson = jsonDecode(responseBody);
    if(response.statusCode == HttpStatus.ok ){

      //这里获取模型数据转换为model
      StoresmodelEntity model1 = StoresmodelEntity.fromJson(converDataToJson);
      StoresmodelRecordlist recordlist = model1.recordList[0];
      StoresmodelRecordlistValuemap valuemap = recordlist.valueMap;
      String title = recordlist.fieldSet[0];

      print('====data=====:${valuemap.suggestkeyword}====:${title}===');

    callback(converDataToJson);
    }else{
      print('====failed=====');
    callback(null);
    }
  }
}



//post请求参数
 postRequestDataWithCallBack(Function callBack) async {

  var httpClient = new HttpClient();
  var uri = new Uri.http(
      'www.dianping.com', '/mkt/ajax/getNewItems', {'pageId': '2','cityId':'16','shopType':'80','categoryId':'3064','regionId':'0','shopId':'79681927'});
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  var responseBody = await response.transform(utf8.decoder).join();
  //疑问：如何把数据传回去呢，有没有block可用

   if(response.statusCode == HttpStatus.ok){
//     print('======${responseBody}======');
     callBack(responseBody);
   }else{
//     print('====失败了=======');
     callBack(null);
   }

}