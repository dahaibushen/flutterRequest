

class StoresmodelEntity  {
	int code;
	List<StoresmodelRecordlist> recordList;

	StoresmodelEntity({this.code, this.recordList});

	StoresmodelEntity.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		if (json['recordList'] != null) {
			recordList = new List<StoresmodelRecordlist>();(json['recordList'] as List).forEach((v) { recordList.add(new StoresmodelRecordlist.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		if (this.recordList != null) {
      data['recordList'] =  this.recordList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class StoresmodelRecordlist {
	List<String> fieldSet;
	StoresmodelRecordlistValuemap valueMap;

	StoresmodelRecordlist({this.fieldSet, this.valueMap});

	StoresmodelRecordlist.fromJson(Map<String, dynamic> json) {
		fieldSet = json['fieldSet']?.cast<String>();
		valueMap = json['valueMap'] != null ? new StoresmodelRecordlistValuemap.fromJson(json['valueMap']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['fieldSet'] = this.fieldSet;
		if (this.valueMap != null) {
      data['valueMap'] = this.valueMap.toJson();
    }
		return data;
	}
}

class StoresmodelRecordlistValuemap {
	String maincategoryids;
	String suggestkeyword;
	String datatype;
	String id;
	String subtag;
	String location;

	StoresmodelRecordlistValuemap({this.maincategoryids, this.suggestkeyword, this.datatype, this.id, this.subtag, this.location});

	StoresmodelRecordlistValuemap.fromJson(Map<String, dynamic> json) {
		maincategoryids = json['maincategoryids'];
		suggestkeyword = json['suggestkeyword'];
		datatype = json['datatype'];
		id = json['id_'];
		subtag = json['subtag'];
		location = json['location'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['maincategoryids'] = this.maincategoryids;
		data['suggestkeyword'] = this.suggestkeyword;
		data['datatype'] = this.datatype;
		data['id_'] = this.id;
		data['subtag'] = this.subtag;
		data['location'] = this.location;
		return data;
	}
}
