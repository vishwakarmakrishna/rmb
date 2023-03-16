import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rmb/app/app_prefs.dart';
import 'package:rmb/domain/model/user/user_model.dart';
import 'package:rmb/domain/networking/api_response.dart';
import 'package:rmb/domain/repository/user/user_repo.dart';
import 'package:rmb/app/di.dart';

class UserBloc {
  late UserRepository _usersRepository;
  late StreamController<ApiResponse<List<User>>> _usersListController;

  StreamSink<ApiResponse<List<User>>> get usersListSink =>
      _usersListController.sink;

  Stream<ApiResponse<List<User>>> get usersListStream =>
      _usersListController.stream;

  UserBloc() {
    _usersListController =
        StreamController<ApiResponse<List<User>>>.broadcast();
    _usersRepository = UserRepository(instance<AppPreferences>());
    getAllUserslist();
  }

  getAllUserslist() async {
    usersListSink.add(ApiResponse.loading('Fetching users List'));
    try {
      List<User>? users = await _usersRepository.getAllUser();

      usersListSink.add(ApiResponse.completed(users));
    } catch (e) {
      if (_usersListController.isClosed) return;
      usersListSink.add(ApiResponse.error(e.toString()));
      debugPrint('$e');
    }
  }

  addUser(User user) async {
    try {
      await _usersRepository.addUser(user);
      getAllUserslist();
    } catch (e) {
      debugPrint('$e');
    }
  }

  updateUser(User user) async {
    try {
      await _usersRepository.updateUser(user);
      getAllUserslist();
    } catch (e) {
      debugPrint('$e');
    }
  }

  deleteUser(User user) async {
    try {
      await _usersRepository.deleteUser(user);
      getAllUserslist();
    } catch (e) {
      debugPrint('$e');
    }
  }

  deleteAllUser() async {
    try {
      await _usersRepository.deleteAllUser();
      getAllUserslist();
    } catch (e) {
      debugPrint('$e');
    }
  }

  dispose() {
    _usersListController.close();
  }
}
