import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/supervisor_basic_info/data/models/supervisor_basic_info_model.dart';
import '../../features/auth/supervisor_register/data/models/supervisor_register_step_one_model.dart';
import '../../features/auth/supervisor_register/data/models/supervisor_register_step_two_model.dart';
import '../../features/auth/user_register/data/models/user_register_or_login_model.dart';
import '../shared/api/data/models/check_phone_model.dart';
import '../utils/app_constants.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConstants.apiBaseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(AppConstants.checkPhoneUri)
  Future<CheckPhoneModel> checkPhoneExist(
      @Body() CheckPhoneModel checkPhoneModel);

  @POST(AppConstants.userRegisterUri)
  Future<UserRegisterOrLoginModel> userRegister(
      @Body() UserRegisterOrLoginModel userRegisterModel);

  @POST(AppConstants.userLoginUri)
  Future<UserRegisterOrLoginModel> userLogin(
      @Body() UserRegisterOrLoginModel userLoginModel);

  @POST(AppConstants.supervisorRegisterStepOneUri)
  Future<SupervisorRegisterStepOneModel> supervisorRegisterStepOne(
      @Body() SupervisorRegisterStepOneModel supervisorRegisterStepOneModel);

  @POST(AppConstants.supervisorRegisterStepTwoUri)
  Future<SupervisorRegisterStepTwoModel> supervisorRegisterStepTwo(
      @Body() SupervisorRegisterStepTwoModel supervisorRegisterStepTwoModel);

  @POST(AppConstants.supervisorBasicInfoUri)
  Future<SupervisorBasicInfoModel> supervisorBasicInfo(
      @Body() SupervisorBasicInfoModel supervisorBasicInfoModel);
}
