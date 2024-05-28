import 'package:json_annotation/json_annotation.dart';
import 'package:marhom/features/auth/user_register/domain/entities/user_register_entity.dart';

part 'user_register_model.g.dart';

@JsonSerializable()
class UserRegisterModel extends UserRegisterEntity {
  @override
  @JsonKey(name: "first_name", includeToJson: true, includeFromJson: false)
  final String? firstName;
  @override
  @JsonKey(name: "last_name", includeToJson: true, includeFromJson: false)
  final String? lastName;
  @override
  @JsonKey(includeToJson: true, includeFromJson: false)
  final String? phone;
  @override
  @JsonKey(name: "snapchat_id", includeToJson: true, includeFromJson: false)
  final String? snapChatId;
  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  final num? status;
  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  final String? success;
  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  final Map<String, dynamic>? error;

  const UserRegisterModel({
    this.firstName,
    this.lastName,
    this.phone,
    this.snapChatId,
    this.status,
    this.success,
    this.error,
  }) : super(
    firstName: firstName,
    lastName: lastName,
    phone: phone,
    snapChatId: snapChatId,
    status: status,
    success: success,
    error: error,
  );

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserRegisterModelToJson(this);

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phone,
        snapChatId,
        status,
        success,
        error,
      ];
}
