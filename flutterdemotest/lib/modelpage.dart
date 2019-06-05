

//定义抽象类
abstract class modelpage {}

//疑问：怎么创建类方法，实例方法，怎么区分呢
class FlutterModel implements modelpage{
  final String name;
  final String address;

  FlutterModel(this.address, this.name);
}
