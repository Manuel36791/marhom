// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['id'] as num? ?? 2077,
      firstName: json['first_name'] as String? ?? 'UNKNOWN STRING VALUE',
      lastName: json['last_name'] as String? ?? 'UNKNOWN STRING VALUE',
      avatar: json['avatar'] as String? ?? 'UNKNOWN STRING VALUE',
      email: json['email'] as String? ?? 'UNKNOWN STRING VALUE',
      phone: json['phone'] as String? ?? 'UNKNOWN STRING VALUE',
      userName: json['user_name'] as String? ?? 'UNKNOWN STRING VALUE',
      gender: json['gender'] as String? ?? 'UNKNOWN STRING VALUE',
      snapChatId: json['snapchat_id'] as String? ?? 'UNKNOWN STRING VALUE',
      type: json['type'] as num? ?? 2077,
      supervisorId: json['supervisor_id'] as num? ?? 2077,
      otp: json['otp'] as num? ?? 2077,
      status: json['status'] as num? ?? 2077,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'email': instance.email,
      'phone': instance.phone,
      'user_name': instance.userName,
      'gender': instance.gender,
      'snapchat_id': instance.snapChatId,
      'type': instance.type,
      'supervisor_id': instance.supervisorId,
      'otp': instance.otp,
      'status': instance.status,
    };
