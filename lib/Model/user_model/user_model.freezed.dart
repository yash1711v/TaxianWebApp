// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNumber")
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email_id")
  String get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "profession")
  String get profession => throw _privateConstructorUsedError;
  @JsonKey(name: "pan_number")
  String get panNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "member")
  String? get member => throw _privateConstructorUsedError;
  @JsonKey(name: "pin")
  String get pin => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "passwordEncoder")
  String? get passwordEncoder => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImageUrl")
  String? get profileImageUrl => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "mobileNumber") String mobileNumber,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email_id") String emailId,
      @JsonKey(name: "profession") String profession,
      @JsonKey(name: "pan_number") String panNumber,
      @JsonKey(name: "member") String? member,
      @JsonKey(name: "pin") String pin,
      @JsonKey(name: "otp") String? otp,
      @JsonKey(name: "passwordEncoder") String? passwordEncoder,
      @JsonKey(name: "active") bool active,
      @JsonKey(name: "profileImageUrl") String? profileImageUrl});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobileNumber = null,
    Object? name = null,
    Object? emailId = null,
    Object? profession = null,
    Object? panNumber = null,
    Object? member = freezed,
    Object? pin = null,
    Object? otp = freezed,
    Object? passwordEncoder = freezed,
    Object? active = null,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      panNumber: null == panNumber
          ? _value.panNumber
          : panNumber // ignore: cast_nullable_to_non_nullable
              as String,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordEncoder: freezed == passwordEncoder
          ? _value.passwordEncoder
          : passwordEncoder // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "mobileNumber") String mobileNumber,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "email_id") String emailId,
      @JsonKey(name: "profession") String profession,
      @JsonKey(name: "pan_number") String panNumber,
      @JsonKey(name: "member") String? member,
      @JsonKey(name: "pin") String pin,
      @JsonKey(name: "otp") String? otp,
      @JsonKey(name: "passwordEncoder") String? passwordEncoder,
      @JsonKey(name: "active") bool active,
      @JsonKey(name: "profileImageUrl") String? profileImageUrl});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobileNumber = null,
    Object? name = null,
    Object? emailId = null,
    Object? profession = null,
    Object? panNumber = null,
    Object? member = freezed,
    Object? pin = null,
    Object? otp = freezed,
    Object? passwordEncoder = freezed,
    Object? active = null,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      panNumber: null == panNumber
          ? _value.panNumber
          : panNumber // ignore: cast_nullable_to_non_nullable
              as String,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordEncoder: freezed == passwordEncoder
          ? _value.passwordEncoder
          : passwordEncoder // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "mobileNumber") this.mobileNumber = "",
      @JsonKey(name: "name") this.name = "",
      @JsonKey(name: "email_id") this.emailId = "",
      @JsonKey(name: "profession") this.profession = "",
      @JsonKey(name: "pan_number") this.panNumber = "",
      @JsonKey(name: "member") this.member,
      @JsonKey(name: "pin") this.pin = "",
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "passwordEncoder") this.passwordEncoder,
      @JsonKey(name: "active") this.active = true,
      @JsonKey(name: "profileImageUrl") this.profileImageUrl});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "mobileNumber")
  final String mobileNumber;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email_id")
  final String emailId;
  @override
  @JsonKey(name: "profession")
  final String profession;
  @override
  @JsonKey(name: "pan_number")
  final String panNumber;
  @override
  @JsonKey(name: "member")
  final String? member;
  @override
  @JsonKey(name: "pin")
  final String pin;
  @override
  @JsonKey(name: "otp")
  final String? otp;
  @override
  @JsonKey(name: "passwordEncoder")
  final String? passwordEncoder;
  @override
  @JsonKey(name: "active")
  final bool active;
  @override
  @JsonKey(name: "profileImageUrl")
  final String? profileImageUrl;

  @override
  String toString() {
    return 'UserModel(id: $id, mobileNumber: $mobileNumber, name: $name, emailId: $emailId, profession: $profession, panNumber: $panNumber, member: $member, pin: $pin, otp: $otp, passwordEncoder: $passwordEncoder, active: $active, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.panNumber, panNumber) ||
                other.panNumber == panNumber) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.passwordEncoder, passwordEncoder) ||
                other.passwordEncoder == passwordEncoder) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mobileNumber,
      name,
      emailId,
      profession,
      panNumber,
      member,
      pin,
      otp,
      passwordEncoder,
      active,
      profileImageUrl);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
          {@JsonKey(name: "id") final int id,
          @JsonKey(name: "mobileNumber") final String mobileNumber,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "email_id") final String emailId,
          @JsonKey(name: "profession") final String profession,
          @JsonKey(name: "pan_number") final String panNumber,
          @JsonKey(name: "member") final String? member,
          @JsonKey(name: "pin") final String pin,
          @JsonKey(name: "otp") final String? otp,
          @JsonKey(name: "passwordEncoder") final String? passwordEncoder,
          @JsonKey(name: "active") final bool active,
          @JsonKey(name: "profileImageUrl") final String? profileImageUrl}) =
      _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "mobileNumber")
  String get mobileNumber;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email_id")
  String get emailId;
  @override
  @JsonKey(name: "profession")
  String get profession;
  @override
  @JsonKey(name: "pan_number")
  String get panNumber;
  @override
  @JsonKey(name: "member")
  String? get member;
  @override
  @JsonKey(name: "pin")
  String get pin;
  @override
  @JsonKey(name: "otp")
  String? get otp;
  @override
  @JsonKey(name: "passwordEncoder")
  String? get passwordEncoder;
  @override
  @JsonKey(name: "active")
  bool get active;
  @override
  @JsonKey(name: "profileImageUrl")
  String? get profileImageUrl;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
