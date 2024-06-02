// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiClient implements ApiClient {
  _ApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://crm.coddiv.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CheckPhoneModel> checkPhoneExist(
      CheckPhoneModel checkPhoneModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(checkPhoneModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CheckPhoneModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/check-phone-exist',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CheckPhoneModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserRegisterOrLoginModel> userRegister(
      UserRegisterOrLoginModel userRegisterModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userRegisterModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserRegisterOrLoginModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/users/register',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserRegisterOrLoginModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserRegisterOrLoginModel> userLogin(
      UserRegisterOrLoginModel userLoginModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userLoginModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserRegisterOrLoginModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/users/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserRegisterOrLoginModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SupervisorRegisterStepOneModel> supervisorRegisterStepOne(
      SupervisorRegisterStepOneModel supervisorRegisterStepOneModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(supervisorRegisterStepOneModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SupervisorRegisterStepOneModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/supervisors/register/step1',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SupervisorRegisterStepOneModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SupervisorRegisterStepTwoModel> supervisorRegisterStepTwo(
      SupervisorRegisterStepTwoModel supervisorRegisterStepTwoModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(supervisorRegisterStepTwoModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SupervisorRegisterStepTwoModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/supervisors/register/step2',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SupervisorRegisterStepTwoModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SupervisorBasicInfoModel> supervisorBasicInfo(
      SupervisorBasicInfoModel supervisorBasicInfoModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(supervisorBasicInfoModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SupervisorBasicInfoModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'V1/basic-information/store',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SupervisorBasicInfoModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SupervisorEditProfileModel> supervisorEditProfile(
      SupervisorEditProfileModel supervisorEditProfileModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(supervisorEditProfileModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SupervisorEditProfileModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/supervisors/update-profile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SupervisorEditProfileModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SupervisorDeleteAccountModel> supervisorDeleteAccount(
      SupervisorDeleteAccountModel supervisorDeleteAccountModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(supervisorDeleteAccountModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SupervisorDeleteAccountModel>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/supervisors/destroy',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SupervisorDeleteAccountModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserDeleteAccountModel> userDeleteAccount(
      UserDeleteAccountModel userDeleteAccountModel) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userDeleteAccountModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserDeleteAccountModel>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/users/destroy',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserDeleteAccountModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
