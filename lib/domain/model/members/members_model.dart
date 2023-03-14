import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'members_model.freezed.dart';
part 'members_model.g.dart';

MembersModel membersModelFromJson(String str) =>
    MembersModel.fromJson(json.decode(str));

String membersModelToJson(MembersModel data) => json.encode(data.toJson());

@freezed
class MembersModel with _$MembersModel {
  const factory MembersModel({
    required List<Member> data,
  }) = _MembersModel;

  factory MembersModel.fromJson(Map<String, dynamic> json) =>
      _$MembersModelFromJson(json);
}

@freezed
class Member with _$Member {
  const factory Member({
    required String image,
    required String name,
    required String designation,
    required String sector,
    required String location,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
