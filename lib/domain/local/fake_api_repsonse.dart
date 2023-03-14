import 'package:rmb/domain/model/members/members_model.dart';
import 'dart:async';
import 'package:rmb/resources/resources.dart';

class FakeApiBaseHelper {
  Future<List<Member>?> fetchMemberList() async {
    await Future.delayed(const Duration(milliseconds: DurationConstant.d2000));
    final response = _membersListData;
    return membersModelFromJson(response).data;
  }

  final String _membersListData = '''
{
	"data": [{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	},{
		"image": "${Assets.image.male1.path}",
		"name": "Abhas Kandya",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
	  "location": "Ambawadi"	
	},{
		"image": "${Assets.image.male2.path}",
		"name": "Sanjay Shah",
		"designation": "Director: Cognisun Infotech",
		"sector": "IT Services",
		"location": "Shahibaug"
	},  {
		"image": "${Assets.image.female1.path}",
		"name": "Ritika Bajaj",
		"designation": "Director: 079 Design Store",
		"sector": "Art Work / Home Decor",
		"location": "Ambawadi"
	}]
}
''';
}
