import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rmb/domain/model/models.dart';
import 'package:rmb/domain/networking/api_response.dart';
import 'package:rmb/domain/repository/members/members_repo.dart';

class MembersBloc {
  late MembersRepository _membersRepository;

  late StreamController<ApiResponse<List<Member>>> _membersListController;

  StreamSink<ApiResponse<List<Member>>> get membersListSink =>
      _membersListController.sink;

  Stream<ApiResponse<List<Member>>> get membersListStream =>
      _membersListController.stream;

  MembersBloc() {
    _membersListController =
        StreamController<ApiResponse<List<Member>>>.broadcast();
    _membersRepository = MembersRepository();
    fetchMemberslist();
  }

  fetchMemberslist() async {
    membersListSink.add(ApiResponse.loading('Fetching Members List'));
    try {
      List<Member>? members = await _membersRepository.fetchMemberList();

      membersListSink.add(ApiResponse.completed(members));
    } catch (e) {
      if (_membersListController.isClosed) return;
      membersListSink.add(ApiResponse.error(e.toString()));
      debugPrint('$e');
    }
  }

  dispose() {
    _membersListController.close();
  }
}
