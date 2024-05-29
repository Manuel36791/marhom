import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/user_register/data/models/user_register_model.dart';
import '../shared/api/data/models/check_phone_model.dart';
import '../utils/app_constants.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConstants.apiBaseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(AppConstants.checkPhoneUri)
  Future<CheckPhoneModel> checkPhoneExist(@Body() CheckPhoneModel checkPhoneModel);

  @POST(AppConstants.userRegisterUri)
  Future<UserRegisterModel> userRegister(@Body() UserRegisterModel userRegisterModel);
}
