import 'dart:developer';

import 'package:rmb/app/app_prefs.dart';
import 'package:rmb/domain/model/user/user_model.dart';
import 'package:rmb/resources/resources.dart';

class UserRepository {
  final AppPreferences _appPreferences;

  const UserRepository(this._appPreferences);

  Future<List<User>?> getAllUser() async {
    await Future.delayed(const Duration(milliseconds: DurationConstant.d500));
    try {
      final response = await _appPreferences.getUserProfile();
      final data = userFromJson(response);
      return data;
    } catch (e) {
      log(e.toString());
      return <User>[];
    }
  }

  Future<void> addUser(User user) async {
    try {
      final data = await getAllUser() ?? <User>[];
      data.add(user);
      final json = userToJson(data);
      await _appPreferences.setUserProfile(json);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUser(User user) async {
    try {
      final response = await _appPreferences.getUserProfile();
      final data = userFromJson(response);
      final index = data.indexWhere((element) => element.email == user.email);
      data[index] = user;
      final json = userToJson(data);
      await _appPreferences.setUserProfile(json);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteUser(User user) async {
    try {
      final response = await _appPreferences.getUserProfile();
      final data = userFromJson(response);
      final index = data.indexWhere((element) => element.email == user.email);
      data.removeAt(index);
      final json = userToJson(data);
      await _appPreferences.setUserProfile(json);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteAllUser() async {
    try {
      await _appPreferences.setUserProfile("[]");
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> addAllUser(List<User> users) async {
    try {
      final json = userToJson(users);
      await _appPreferences.setUserProfile(json);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateAllUser(List<User> users) async {
    try {
      final json = userToJson(users);
      await _appPreferences.setUserProfile(json);
    } catch (e) {
      throw Exception(e);
    }
  }
}
