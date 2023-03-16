import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class User with _$User {
  const factory User({
    required String firstName,
    required String middleName,
    required String lastName,
    required String mobileNumber,
    required String gender,
    required String occupation,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

String getFullName(User user) =>
    '${user.firstName} ${user.middleName} ${user.lastName}';
