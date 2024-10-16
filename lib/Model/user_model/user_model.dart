import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: "id")
    @Default(0)
    int id,
    @JsonKey(name: "mobileNumber")
    @Default("")
    String mobileNumber,
    @JsonKey(name: "name")
    @Default("")
    String name,
    @JsonKey(name: "email_id")
    @Default("")
    String emailId,
    @JsonKey(name: "profession")
    @Default("")
    String profession,
    @JsonKey(name: "pan_number")
    @Default("")
    String panNumber,
    @JsonKey(name: "member")
    String? member,
    @JsonKey(name: "pin")
    @Default("")
    String pin,
    @JsonKey(name: "otp")
    String? otp,
    @JsonKey(name: "passwordEncoder")
    String? passwordEncoder,
    @JsonKey(name: "active")
    @Default(true)
    bool active,
    @JsonKey(name: "profileImageUrl")
    String? profileImageUrl,


  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}