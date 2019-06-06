import 'package:json_annotation/json_annotation.dart';

part 'Jsmodel.g.dart';


@JsonSerializable()
class  Jsmodel extends Object with _$JsmodelSerializerMixin{

  @JsonKey(name: 'recordList')
  List<RecordList> recordList;

  @JsonKey(name: 'code')
  int code;

  Jsmodel(this.recordList,this.code,);

  factory Jsmodel.fromJson(Map<String, dynamic> srcJson) => _$JsmodelFromJson(srcJson);

}


@JsonSerializable()
class RecordList extends Object with _$RecordListSerializerMixin{

  @JsonKey(name: 'valueMap')
  ValueMap valueMap;

  @JsonKey(name: 'fieldSet')
  List<String> fieldSet;

  RecordList(this.valueMap,this.fieldSet,);

  factory RecordList.fromJson(Map<String, dynamic> srcJson) => _$RecordListFromJson(srcJson);

}


@JsonSerializable()
class ValueMap extends Object with _$ValueMapSerializerMixin{

  @JsonKey(name: 'subtag')
  String subtag;

  @JsonKey(name: 'location')
  String location;

  @JsonKey(name: 'maincategoryids')
  String maincategoryids;

  @JsonKey(name: 'datatype')
  String datatype;

  @JsonKey(name: 'id_')
  String id;

  @JsonKey(name: 'suggestkeyword')
  String suggestkeyword;

  ValueMap(this.subtag,this.location,this.maincategoryids,this.datatype,this.id,this.suggestkeyword,);

  factory ValueMap.fromJson(Map<String, dynamic> srcJson) => _$ValueMapFromJson(srcJson);

}
