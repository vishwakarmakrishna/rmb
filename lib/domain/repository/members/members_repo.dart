import 'package:rmb/domain/local/fake_api_repsonse.dart';
import 'package:rmb/domain/model/models.dart';

class MembersRepository {
  // remote data source
  // final ApiBaseHelper _helper = ApiBaseHelper();

  // local data source
  final FakeApiBaseHelper _localDataSource = FakeApiBaseHelper();

  Future<List<Member>?> fetchMemberList() async {
    return await _localDataSource.fetchMemberList();
  }
}
