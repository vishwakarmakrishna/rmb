import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rmb/blocs/user_bloc.dart';
import 'package:rmb/domain/model/user/user_model.dart';
import 'package:rmb/domain/networking/api_response.dart';
import 'package:rmb/presentation/all_states.dart';
import 'package:rmb/resources/resources.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => UserViewState();
}

class UserViewState extends State<UserView> {
  late UserBloc _bloc;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _bloc = UserBloc();
    _timer = Timer.periodic(const Duration(seconds: 1), callback);
  }

  void callback(Timer timer) async {
    bool isEmpty = await _bloc.usersListStream.isEmpty;
    if (isEmpty) return;
    _bloc.getAllUserslist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p10),
            child: Row(
              children: [
                InkResponse(
                  onTap: () {
                    context.pushNamed(RouterStrings.editPath);
                  },
                  child: Container(
                    height: AppSize.s40,
                    width: AppSize.s40,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: AppSize.s2,
                      ),
                    ),
                    child: Icon(
                      IconsManager.add,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                const Spacer(),
                Assets.image.rbmLogo.image(),
                const Spacer(),
                Assets.image.logo.image(),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: RefreshIndicator(
          onRefresh: () => _bloc.getAllUserslist(),
          child: StreamBuilder<ApiResponse<List<User>>>(
            stream: _bloc.usersListStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                switch (snapshot.data?.status) {
                  case null:
                    return Loading(
                        loadingMessage:
                            snapshot.data?.message ?? AppStrings.loading);
                  case Status.loading:
                    return Loading(
                        loadingMessage:
                            snapshot.data?.message ?? AppStrings.loading);

                  case Status.completed:
                    final userList = snapshot.data?.data ?? [];
                    if (userList.isEmpty) {
                      return Empty(
                        emptyMessage:
                            snapshot.data?.message ?? AppStrings.empty,
                        onRetryPressed: () => _bloc.getAllUserslist(),
                      );
                    } else {
                      return AllUser(
                        userList: userList,
                        bloc: _bloc,
                      );
                    }

                  case Status.error:
                    return Error(
                      errorMessage: snapshot.data?.message ?? AppStrings.error,
                      onRetryPressed: () => _bloc.getAllUserslist(),
                    );
                }
              }
              return Loading(
                  loadingMessage: snapshot.data?.message ?? AppStrings.loading);
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    _timer.cancel();
    super.dispose();
  }
}

class AllUser extends StatefulWidget {
  const AllUser({Key? key, required this.userList, required this.bloc})
      : super(key: key);
  final List<User> userList;
  final UserBloc bloc;
  @override
  State<AllUser> createState() => AllUserState();
}

class AllUserState extends State<AllUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${AppStrings.all} ${AppStrings.users}',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: widget.userList.length,
            itemBuilder: (context, index) => UserCard(
              bloc: widget.bloc,
              user: widget.userList[index],
            ),
            separatorBuilder: (context, index) => const Divider(
              height: AppSize.s1,
              thickness: AppSize.s1,
            ),
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user, required this.bloc})
      : super(key: key);
  final User user;
  final UserBloc bloc;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(getFullName(user),
          style: getBoldStyle(
            fontSize: AppSize.s16,
            color: ColorManager.primary,
          )),
      subtitle: Text(user.email,
          style: getBoldStyle(
            color: ColorManager.primary,
          )),
      childrenPadding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p10,
        vertical: AppPadding.p5,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: UserCardDetailsView(
                value: getFullName(user),
                title: AppStrings.fullName,
              ),
            ),
            Expanded(
              child: UserCardDetailsView(
                value: user.email,
                title: AppStrings.email,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.s5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: UserCardDetailsView(
                value: user.mobileNumber,
                title: AppStrings.mobileNumber,
              ),
            ),
            Expanded(
              child: UserCardDetailsView(
                value: user.occupation,
                title: AppStrings.occupation,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.s5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserCardDetailsView(
              value: user.gender,
              title: AppStrings.gender,
            ),
            InkResponse(
              onTap: () {
                bloc.deleteUser(user);
              },
              child: Icon(
                IconsManager.delete,
                color: ColorManager.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class UserCardDetailsView extends StatelessWidget {
  final String title;
  final String value;

  const UserCardDetailsView(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: getRegularStyle(
            color: ColorManager.primary,
            fontSize: FontSize.s14,
          ),
        ),
        const SizedBox(height: AppSize.s5),
        Text(
          title,
          style: getRegularStyle(
            color: ColorManager.grey1,
            fontSize: FontSize.s14,
          ),
        ),
      ],
    );
  }
}
