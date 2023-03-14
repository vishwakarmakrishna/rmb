import 'package:flutter/material.dart';
import 'package:rmb/blocs/members_bloc.dart';
import 'package:rmb/domain/model/models.dart';
import 'package:rmb/domain/networking/api_response.dart';
import 'package:rmb/presentation/all_states.dart';
import 'package:rmb/resources/resources.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late MembersBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MembersBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight + AppPadding.p20,
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
                      image: DecorationImage(
                        image: Assets.image.male2.provider(),
                      ),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: AppSize.s2,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Assets.image.rbmLogo.image(),
                Assets.image.logo.image(),
              ],
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(AppSize.s65),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorManager.lightBlueGrey,
                            borderRadius: BorderRadius.circular(AppSize.s12),
                          ),
                          padding: const EdgeInsets.all(AppPadding.p12),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                IconsManager.search,
                                color: ColorManager.black,
                              ),
                              const SizedBox(width: AppSize.s12),
                              Text(
                                AppStrings.searchMembers,
                                style: getRegularStyle(
                                  color: ColorManager.black,
                                  fontSize: FontSize.s14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSize.s10),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorManager.lightBlueGrey,
                          borderRadius: BorderRadius.circular(AppSize.s12),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconsManager.filterAlt,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSize.s10),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorManager.lightBlueGrey,
                          borderRadius: BorderRadius.circular(AppSize.s12),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconsManager.refresh,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.s10),
                Flexible(
                  child: Row(
                    children: [
                      StreamBuilder<ApiResponse<List<Member>>>(
                          stream: _bloc.membersListStream,
                          builder: (context, snapshot) {
                            final membersList = snapshot.data?.data ?? [];

                            return Text(
                              '${membersList.length} ${AppStrings.records}',
                              style: getRegularStyle(
                                color: ColorManager.grey1,
                                fontSize: FontSize.s14,
                              ),
                            );
                          }),
                      const Spacer(),
                      Text(
                        AppStrings.active,
                        style: getRegularStyle(
                          color: ColorManager.primary,
                          fontSize: FontSize.s14,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: AppMargin.m8,
                        ),
                        height: AppSize.s12,
                        width: AppSize.s2,
                        decoration: BoxDecoration(
                          color: ColorManager.grey1,
                        ),
                      ),
                      Text(
                        AppStrings.inactive,
                        style: getRegularStyle(
                          color: ColorManager.grey1,
                          fontSize: FontSize.s14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: RefreshIndicator(
          onRefresh: () => _bloc.fetchMemberslist(),
          child: StreamBuilder<ApiResponse<List<Member>>>(
            stream: _bloc.membersListStream,
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
                    final membersList = snapshot.data?.data ?? [];
                    if (membersList.isEmpty) {
                      return Empty(
                        emptyMessage:
                            snapshot.data?.message ?? AppStrings.empty,
                        onRetryPressed: () => _bloc.fetchMemberslist(),
                      );
                    } else {
                      return MemberListView(memberList: membersList);
                    }

                  case Status.error:
                    return Error(
                      errorMessage: snapshot.data?.message ?? AppStrings.error,
                      onRetryPressed: () => _bloc.fetchMemberslist(),
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
    super.dispose();
  }
}

class MemberListView extends StatefulWidget {
  final List<Member> memberList;

  const MemberListView({Key? key, required this.memberList}) : super(key: key);

  @override
  State<MemberListView> createState() => _MemberListViewState();
}

class _MemberListViewState extends State<MemberListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.memberList.length,
      itemBuilder: (context, index) {
        return MemberListItemView(member: widget.memberList[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}

class MemberListItemView extends StatefulWidget {
  const MemberListItemView({Key? key, required this.member}) : super(key: key);
  final Member member;

  @override
  State<MemberListItemView> createState() => _MemberListItemViewState();
}

class _MemberListItemViewState extends State<MemberListItemView> {
  final ValueNotifier<bool> _isExpanded = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: AppSize.s10, top: AppSize.s10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: AppSize.s28,
                    backgroundImage: AssetImage(widget.member.image),
                  ),
                  const SizedBox(width: AppSize.s8),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: AppPadding.p2,
                        ),
                        Text(
                          widget.member.name,
                          style: getSemiBoldStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s18,
                          ),
                        ),
                        Text(
                          widget.member.designation,
                          style: getSemiBoldStyle(
                            color: ColorManager.black,
                            fontSize: FontSize.s14,
                          ),
                        ),
                        Text(
                          widget.member.sector,
                          style: getSemiBoldStyle(
                            color: ColorManager.grey1,
                            fontSize: FontSize.s14,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              IconsManager.location,
                              color: ColorManager.primary,
                              size: AppSize.s16,
                            ),
                            const SizedBox(width: AppSize.s4),
                            Text(
                              widget.member.location,
                              style: getSemiBoldStyle(
                                color: ColorManager.primary,
                                fontSize: FontSize.s14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.lightBlueGrey,
                      shape: BoxShape.circle,
                    ),
                    child: ValueListenableBuilder<bool>(
                      valueListenable: _isExpanded,
                      builder: (context, value, child) {
                        return IconButton(
                          onPressed: () {
                            _isExpanded.value = !_isExpanded.value;
                          },
                          icon: Icon(
                            value
                                ? IconsManager.idCard
                                : IconsManager.arrowDown,
                            color: ColorManager.primary,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSize.s65),
              child: ValueListenableBuilder<bool>(
                valueListenable: _isExpanded,
                builder: (context, value, child) {
                  return SizeTransition(
                    sizeFactor: value
                        ? CurvedAnimation(
                            parent: const AlwaysStoppedAnimation(AppSize.s1),
                            curve: Curves.easeIn,
                          )
                        : CurvedAnimation(
                            parent: const AlwaysStoppedAnimation(AppSize.s0),
                            curve: Curves.easeIn,
                          ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: AppSize.s14,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.image.phone.image(
                                width: AppSize.s45,
                                height: AppSize.s45,
                              ),
                              const SizedBox(width: AppSize.s10),
                              Assets.image.whatsapp.image(
                                width: AppSize.s45,
                                height: AppSize.s45,
                              ),
                              const SizedBox(width: AppSize.s10),
                              Assets.image.email.image(
                                width: AppSize.s45,
                                height: AppSize.s45,
                              ),
                              const SizedBox(width: AppSize.s10),
                              Assets.image.edit.image(
                                width: AppSize.s45,
                                height: AppSize.s45,
                              ),
                              const SizedBox(width: AppSize.s10),
                              Assets.image.delete.image(
                                width: AppSize.s45,
                                height: AppSize.s45,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.s10,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.image.fb.image(
                                width: AppSize.s40,
                                height: AppSize.s40,
                              ),
                              const SizedBox(width: AppSize.s5),
                              Assets.image.instagram.image(
                                width: AppSize.s40,
                                height: AppSize.s40,
                              ),
                              const SizedBox(width: AppSize.s5),
                              Assets.image.linkedin.image(
                                width: AppSize.s40,
                                height: AppSize.s40,
                              ),
                              const SizedBox(width: AppSize.s5),
                              Assets.image.share.image(
                                width: AppSize.s40,
                                height: AppSize.s40,
                              ),
                              const SizedBox(width: AppSize.s5),
                              Assets.image.web.image(
                                width: AppSize.s40,
                                height: AppSize.s40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ));

    //   ListTile(
    //     leading: CircleAvatar(
    //       backgroundImage: AssetImage(member.image),
    //     ),
    //     title: Text(member.name),
    //     subtitle: Text(member.designation),
    //     trailing: const Icon(Icons.arrow_forward_ios),
    //   ),
    // );
  }
}
