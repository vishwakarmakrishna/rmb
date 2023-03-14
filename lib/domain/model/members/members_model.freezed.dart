// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MembersModel _$MembersModelFromJson(Map<String, dynamic> json) {
  return _MembersModel.fromJson(json);
}

/// @nodoc
mixin _$MembersModel {
  List<Member> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersModelCopyWith<MembersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersModelCopyWith<$Res> {
  factory $MembersModelCopyWith(
          MembersModel value, $Res Function(MembersModel) then) =
      _$MembersModelCopyWithImpl<$Res, MembersModel>;
  @useResult
  $Res call({List<Member> data});
}

/// @nodoc
class _$MembersModelCopyWithImpl<$Res, $Val extends MembersModel>
    implements $MembersModelCopyWith<$Res> {
  _$MembersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersModelCopyWith<$Res>
    implements $MembersModelCopyWith<$Res> {
  factory _$$_MembersModelCopyWith(
          _$_MembersModel value, $Res Function(_$_MembersModel) then) =
      __$$_MembersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Member> data});
}

/// @nodoc
class __$$_MembersModelCopyWithImpl<$Res>
    extends _$MembersModelCopyWithImpl<$Res, _$_MembersModel>
    implements _$$_MembersModelCopyWith<$Res> {
  __$$_MembersModelCopyWithImpl(
      _$_MembersModel _value, $Res Function(_$_MembersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_MembersModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembersModel implements _MembersModel {
  const _$_MembersModel({required final List<Member> data}) : _data = data;

  factory _$_MembersModel.fromJson(Map<String, dynamic> json) =>
      _$$_MembersModelFromJson(json);

  final List<Member> _data;
  @override
  List<Member> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MembersModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersModelCopyWith<_$_MembersModel> get copyWith =>
      __$$_MembersModelCopyWithImpl<_$_MembersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembersModelToJson(
      this,
    );
  }
}

abstract class _MembersModel implements MembersModel {
  const factory _MembersModel({required final List<Member> data}) =
      _$_MembersModel;

  factory _MembersModel.fromJson(Map<String, dynamic> json) =
      _$_MembersModel.fromJson;

  @override
  List<Member> get data;
  @override
  @JsonKey(ignore: true)
  _$$_MembersModelCopyWith<_$_MembersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  String get sector => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {String image,
      String name,
      String designation,
      String sector,
      String location});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? designation = null,
    Object? sector = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$_MemberCopyWith(_$_Member value, $Res Function(_$_Member) then) =
      __$$_MemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String name,
      String designation,
      String sector,
      String location});
}

/// @nodoc
class __$$_MemberCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$_Member>
    implements _$$_MemberCopyWith<$Res> {
  __$$_MemberCopyWithImpl(_$_Member _value, $Res Function(_$_Member) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? designation = null,
    Object? sector = null,
    Object? location = null,
  }) {
    return _then(_$_Member(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Member implements _Member {
  const _$_Member(
      {required this.image,
      required this.name,
      required this.designation,
      required this.sector,
      required this.location});

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String designation;
  @override
  final String sector;
  @override
  final String location;

  @override
  String toString() {
    return 'Member(image: $image, name: $name, designation: $designation, sector: $sector, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Member &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, name, designation, sector, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      __$$_MemberCopyWithImpl<_$_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  const factory _Member(
      {required final String image,
      required final String name,
      required final String designation,
      required final String sector,
      required final String location}) = _$_Member;

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get designation;
  @override
  String get sector;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      throw _privateConstructorUsedError;
}
