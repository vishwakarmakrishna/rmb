import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:rmb/app/app_prefs.dart';
import 'package:rmb/app/di.dart';
import 'package:rmb/blocs/user_bloc.dart';
import 'package:rmb/domain/model/user/user_model.dart';
import 'package:rmb/domain/repository/user/user_repo.dart';
import 'package:rmb/resources/resources.dart';

class EditMember extends StatefulWidget {
  const EditMember({Key? key}) : super(key: key);

  @override
  State<EditMember> createState() => _EditMemberState();
}

class _EditMemberState extends State<EditMember> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  late UserRepository _userRepository;
  final _formKey = GlobalKey<FormState>();
  late TextEditingController genderController;
  late TextEditingController firstNameController;
  late TextEditingController middleNameController;
  late TextEditingController lastNameController;
  late TextEditingController mobileNumberController;
  late TextEditingController occupationController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    genderController = TextEditingController();
    firstNameController = TextEditingController();
    middleNameController = TextEditingController();
    lastNameController = TextEditingController();
    mobileNumberController = TextEditingController();
    occupationController = TextEditingController();
    emailController = TextEditingController();
    _userRepository = UserRepository(_appPreferences);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight + AppPadding.p4,
        flexibleSpace: const _AppBar(),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SectionWidget(
                  title: AppStrings.firstName,
                  controller: firstNameController,
                  validator: (value) =>
                      ValidatorManager.validateFirstName(value),
                ),
                SectionWidget(
                  title: AppStrings.middleName,
                  controller: middleNameController,
                  validator: (value) =>
                      ValidatorManager.validateMiddleName(value),
                ),
                SectionWidget(
                  title: AppStrings.lastName,
                  controller: lastNameController,
                  validator: (value) =>
                      ValidatorManager.validateLastName(value),
                ),
                SectionWidget(
                  title: AppStrings.mobileNumber,
                  controller: mobileNumberController,
                  validator: (value) => ValidatorManager.validateMobile(value),
                ),
                CustomSectionWidget(
                  title: AppStrings.gender,
                  child: SizedBox(
                    height: AppSize.s40,
                    width: MediaQuery.of(context).size.width,
                    child: _GenderSelectionView(
                      controller: genderController,
                    ),
                  ),
                ),
                SectionWidget(
                  title: AppStrings.occupation,
                  controller: occupationController,
                  validator: (value) =>
                      ValidatorManager.validateOccupation(value),
                ),
                SectionWidget(
                  title: AppStrings.email,
                  controller: emailController,
                  validator: (value) => ValidatorManager.validateEmail(value),
                ),
                // const TitleWidget(
                //   title: AppStrings.addressInformation,
                // ),
                // SectionWidget(
                //   title: AppStrings.addressLine1,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateAddressLine1(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.addressLine2,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateAddressLine1(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.area,
                //   controller: TextEditingController(),
                //   validator: (value) => ValidatorManager.validateArea(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.city,
                //   controller: TextEditingController(),
                //   validator: (value) => ValidatorManager.validateCity(value),
                //   suffixIcon: Icon(
                //     IconsManager.arrowDown,
                //     color: ColorManager.primary,
                //   ),
                // ),
                // SectionWidget(
                //   title: AppStrings.state,
                //   controller: TextEditingController(),
                //   validator: (value) => ValidatorManager.validateState(value),
                //   suffixIcon: Icon(
                //     IconsManager.arrowDown,
                //     color: ColorManager.primary,
                //   ),
                // ),
                // SectionWidget(
                //   title: AppStrings.pincode,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validatePostCode(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.businessName,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateBusinessName(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.uploadLogo,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateUploadLogo(value),
                //   suffixIcon: Container(
                //     height: AppSize.s35,
                //     width: AppSize.s80,
                //     margin: const EdgeInsets.all(AppPadding.p10),
                //     decoration: BoxDecoration(
                //       color: ColorManager.white,
                //       borderRadius: BorderRadius.circular(AppSize.s12),
                //     ),
                //     alignment: Alignment.center,
                //     child: Text(
                //       AppStrings.upload,
                //       style: getRegularStyle(
                //         color: ColorManager.black,
                //         fontSize: AppSize.s12,
                //       ),
                //     ),
                //   ),
                // ),
                // const _SubCat(),
                // SectionWidget(
                //   title: AppStrings.about,
                //   controller: TextEditingController(),
                //   validator: (value) => ValidatorManager.validateAbout(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.productorServices,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateProductOrServices(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.gives,
                //   controller: TextEditingController(),
                //   validator: (value) => ValidatorManager.validateGives(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.asks,
                //   controller: TextEditingController(),
                //   validator: (value) => ValidatorManager.validateAsks(value),
                // ),
                // CustomSectionWidget(
                //   title: AppStrings.dateOfBirth,
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: SectionWidget.buildTextFormField(
                //           controller: TextEditingController(),
                //           title: AppStrings.month,
                //           hintText: AppStrings.month,
                //           suffixIcon: Icon(
                //             IconsManager.arrowDown,
                //             color: ColorManager.primary,
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: AppSize.s5,
                //       ),
                //       Expanded(
                //         child: SectionWidget.buildTextFormField(
                //           controller: TextEditingController(),
                //           title: AppStrings.day,
                //           hintText: AppStrings.day,
                //           suffixIcon: Icon(
                //             IconsManager.arrowDown,
                //             color: ColorManager.primary,
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: AppSize.s5,
                //       ),
                //       Expanded(
                //         child: SectionWidget.buildTextFormField(
                //           controller: TextEditingController(),
                //           title: AppStrings.year,
                //           hintText: AppStrings.year,
                //           suffixIcon: Icon(
                //             IconsManager.arrowDown,
                //             color: ColorManager.primary,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SectionWidget(
                //   title: AppStrings.facebook,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateFacebook(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.instagram,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateInstagram(value),
                // ),
                // SectionWidget(
                //   title: AppStrings.linkedin,
                //   controller: TextEditingController(),
                //   validator: (value) =>
                //       ValidatorManager.validateLinkedIn(value),
                // ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: InkResponse(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            // Navigator.pop(context);
            log('save');

            final user = User(
              firstName: firstNameController.text,
              middleName: middleNameController.text,
              lastName: lastNameController.text,
              mobileNumber: mobileNumberController.text,
              gender: genderController.text,
              occupation: occupationController.text,
              email: emailController.text,
            );

            log(user.toJson().toString(), name: 'user');
            await _userRepository.addUser(user);
          }
        },
        child: Container(
          height: AppSize.s60,
          margin: const EdgeInsets.all(AppPadding.p10),
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
          alignment: Alignment.center,
          child: Text(
            AppStrings.save,
            style: getBoldStyle(
              color: ColorManager.white,
              fontSize: AppSize.s16,
            ),
          ),
        ),
      ),
    );
  }
}

// class _SubCat extends StatelessWidget {
//   const _SubCat({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         bottom: AppSize.s15,
//       ),
//       child: DottedBorder(
//         dashPattern: const [AppSize.s3, AppSize.s3],
//         color: ColorManager.black,
//         radius: const Radius.circular(AppSize.s12),
//         borderType: BorderType.RRect,
//         strokeWidth: 1,
//         child: Padding(
//           padding: const EdgeInsets.only(
//             left: AppSize.s15,
//             right: AppSize.s15,
//             top: AppSize.s15,
//           ),
//           child: CustomSectionWidget(
//             title: AppStrings.addNewCategory,
//             titleStyle: getRegularStyle(
//               color: ColorManager.primary,
//               fontSize: AppSize.s14,
//             ),
//             tralling: Icon(
//               IconsManager.delete,
//               color: ColorManager.red,
//             ),
//             child: Flexible(
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 5,
//                     child: SectionWidget(
//                       title: AppStrings.subCategory,
//                       controller: TextEditingController(),
//                       validator: (value) =>
//                           ValidatorManager.validateBusinessSubCategory(value),
//                     ),
//                   ),
//                   const SizedBox(width: AppSize.s10),
//                   Expanded(
//                     flex: 3,
//                     child: SectionWidget(
//                       title: AppStrings.adjFactorPrecentage,
//                       controller: TextEditingController(),
//                       validator: (value) =>
//                           ValidatorManager.validateAdjFactor(value),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p10),
      child: Row(
        children: [
          Text(
            title,
            style: getBoldStyle(
              color: ColorManager.blue,
              fontSize: AppSize.s16,
            ),
          ),
          const SizedBox(width: AppSize.s16),
          Expanded(
            child: Divider(
              color: ColorManager.lightBlueGrey,
            ),
          ),
        ],
      ),
    );
  }
}

class _GenderSelectionView extends StatefulWidget {
  const _GenderSelectionView({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  State<_GenderSelectionView> createState() => _GenderSelectionViewState();
}

class _GenderSelectionViewState extends State<_GenderSelectionView> {
  late ValueNotifier<String?> _selectedGender;

  @override
  void initState() {
    _selectedGender = ValueNotifier<String?>(null);
    super.initState();
  }

  static const _allGendersList = <String>[
    AppStrings.male,
    AppStrings.female,
  ];

  @override
  Widget build(BuildContext context) {
    return FormField<String?>(
      validator: (value) =>
          ValidatorManager.validateGender(_selectedGender.value),
      builder: (FormFieldState<String?> state) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _allGendersList.length,
                itemBuilder: (context, index) {
                  return ValueListenableBuilder<String?>(
                      valueListenable: _selectedGender,
                      builder: (context, value, child) {
                        return InkResponse(
                          onTap: () {
                            _selectedGender.value = _allGendersList[index];
                            if (_selectedGender.value != null) {
                              widget.controller.text = _selectedGender.value!;
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              value == _allGendersList[index]
                                  ? selectedRadio()
                                  : unselectedRadio(),
                              Flexible(
                                child: Text(
                                  _allGendersList[index],
                                  style: getRegularStyle(
                                    color: ColorManager.black,
                                    fontSize: AppSize.s14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                }),
          ),
          if (state.errorText != null)
            Text(
              state.errorText!,
              style: getRegularStyle(
                color: ColorManager.red,
                fontSize: AppSize.s12,
              ),
            )
        ],
      ),
    );
  }

  Padding unselectedRadio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
      child: Assets.image.unselectedRadio.image(
        height: AppSize.s20,
        width: AppSize.s20,
      ),
    );
  }

  Widget selectedRadio() {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p10,
        right: AppPadding.p12,
      ),
      child: Transform.translate(
        offset: const Offset(0, AppSize.s2),
        child: Transform.scale(
          scale: AppSize.s35,
          child: Assets.image.selectedRadio.image(
            height: AppSize.s1,
            width: AppSize.s1,
          ),
        ),
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    Key? key,
    required this.title,
    required this.controller,
    this.builder,
    this.validator,
    this.suffixIcon,
    this.hintText,
    this.maxLines = 1,
  }) : super(key: key);
  final String title;
  final String? hintText;
  final TextEditingController controller;
  final Function(Widget child, TextEditingController controller)? builder;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: getRegularStyle(
            color: ColorManager.black,
            fontSize: AppSize.s14,
          ),
        ),
        const SizedBox(height: AppSize.s4),
        builder != null
            ? builder!(
                buildTextFormField(
                  controller: controller,
                  title: title,
                  validator: validator,
                  suffixIcon: suffixIcon,
                  hintText: hintText,
                  maxLines: maxLines,
                ),
                controller,
              )
            : buildTextFormField(
                controller: controller,
                title: title,
                validator: validator,
                suffixIcon: suffixIcon,
                hintText: hintText,
                maxLines: maxLines,
              ),
        const SizedBox(height: AppSize.s14),
      ],
    );
  }

  static TextFormField buildTextFormField({
    InputDecoration? decoration = const InputDecoration(),
    required TextEditingController controller,
    required String title,
    String? hintText,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    int? maxLines = 1,
  }) {
    final hintString = hintText ?? 'Enter $title';
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: decoration?.copyWith(
        hintText: hintString,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}

class CustomSectionWidget extends StatelessWidget {
  const CustomSectionWidget({
    Key? key,
    required this.title,
    required this.child,
    this.tralling = const SizedBox.shrink(),
    this.titleStyle,
  }) : super(key: key);
  final String title;
  final TextStyle? titleStyle;
  final Widget child;
  final Widget tralling;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: titleStyle ??
                  getRegularStyle(
                    color: ColorManager.black,
                    fontSize: AppSize.s14,
                  ),
            ),
            tralling,
          ],
        ),
        const SizedBox(height: AppSize.s4),
        child,
        const SizedBox(height: AppSize.s14),
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: Row(
          children: [
            Container(
              height: AppSize.s40,
              width: AppSize.s40,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.lightBlueGrey,
              ),
              alignment: Alignment.center,
              child: IconButton(
                onPressed: context.pop,
                icon: Icon(
                  IconsManager.back,
                  size: AppSize.s20,
                  color: ColorManager.grey1,
                ),
              ),
            ),
            const SizedBox(width: AppSize.s5),
            Container(
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
            const Spacer(),
            Assets.image.rbmLogo.image(),
            Assets.image.logo.image(),
          ],
        ),
      ),
    );
  }
}
