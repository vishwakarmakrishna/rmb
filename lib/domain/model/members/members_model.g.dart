// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MembersModel _$$_MembersModelFromJson(Map<String, dynamic> json) =>
    _$_MembersModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MembersModelToJson(_$_MembersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      image: json['image'] as String,
      name: json['name'] as String,
      designation: json['designation'] as String,
      sector: json['sector'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'designation': instance.designation,
      'sector': instance.sector,
      'location': instance.location,
    };
