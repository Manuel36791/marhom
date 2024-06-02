import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/supervisor_register/data/repositories/supervisor_register_repo_impl.dart';
import '../../features/auth/supervisor_register/domain/repositories/supervisor_register_repo.dart';
import '../../features/auth/supervisor_register/domain/use_cases/supervisor_register_step_one_use_case.dart';
import '../../features/auth/supervisor_register/domain/use_cases/supervisor_register_step_two_use_case.dart';
import '../../features/auth/supervisor_register/presentation/manager/supervisor_register_cubit.dart';
import '../../features/auth/user_register/data/repositories/user_register_repo_impl.dart';
import '../../features/auth/user_register/domain/repositories/user_register_or_login_repo.dart';
import '../../features/auth/user_register/domain/use_cases/user_login_use_case.dart';
import '../../features/auth/user_register/domain/use_cases/user_register_use_case.dart';
import '../../features/auth/user_register/presentation/manager/user_register_cubit.dart';
import '../../features/main/home/presentation/manager/home_cubit.dart';
import '../../features/profile/supervisor_edit_profile/data/repositories/supervisor_edit_profile_repo_impl.dart';
import '../../features/profile/supervisor_edit_profile/domain/repositories/supervisor_edit_profile_repo.dart';
import '../../features/profile/supervisor_edit_profile/domain/use_cases/supervisor_edit_profile_use_case.dart';
import '../../features/profile/supervisor_edit_profile/presentation/manager/supervisor_edit_profile_cubit.dart';
import '../service/api_client.dart';
import '../service/dio_factory.dart';
import '../shared/api/data/repositories/check_phone_repo_impl.dart';
import '../shared/api/domain/repositories/check_phone_repo.dart';
import '../shared/api/domain/use_cases/check_phone_use_case.dart';

final di = GetIt.instance;

Future<void> init() async {
  /// Cubits -> useCases -> Repos -> Services

  /// <!------ SUPERVISOR REGISTER ------->
  di.registerFactory(() => SupervisorRegisterCubit(
      registerStepOneUseCase: di(),
      registerStepTwoUseCase: di(),
      checkPhoneUseCase: di()));
  di.registerLazySingleton(
      () => SupervisorRegisterStepOneUseCase(supervisorRegisterRepo: di()));
  di.registerLazySingleton(
      () => SupervisorRegisterStepTwoUseCase(supervisorRegisterRepo: di()));
  di.registerLazySingleton<SupervisorRegisterRepo>(
      () => SupervisorRegisterRepoImpl(supervisorRegisterService: di()));

  /// <!------ CHECK PHONE ------->
  di.registerLazySingleton(() => CheckPhoneUseCase(checkPhoneRepo: di()));
  di.registerLazySingleton<CheckPhoneRepo>(
      () => CheckPhoneRepoImpl(checkPhoneService: di()));

  /// <!------ USER REGISTER ------->
  di.registerFactory(() => UserRegisterCubit(
      userRegisterUseCase: di(),
      checkPhoneUseCase: di(),
      userLoginUseCase: di()));
  di.registerLazySingleton(
      () => UserRegisterUseCase(userRegisterOrLoginRepo: di()));
  di.registerLazySingleton(
      () => UserLoginUseCase(userRegisterOrLoginRepo: di()));
  di.registerLazySingleton<UserRegisterOrLoginRepo>(
      () => UserRegisterOrLoginRepoImpl(userRegisterService: di()));

  /// <!------ SUPERVISOR EDIT PROFILE ------->
  di.registerFactory(
      () => SupervisorEditProfileCubit(supervisorEditProfileUseCase: di()));
  di.registerLazySingleton(
      () => SupervisorEditProfileUseCase(supervisorEditProfileRepo: di()));
  di.registerLazySingleton<SupervisorEditProfileRepo>(
      () => SupervisorEditProfileRepoImpl(supervisorEditProfileService: di()));

  /// <!------ HOME ------->
  di.registerFactory(() => HomeCubit());

  /// <!------ API CLIENT ------->
  Dio dio = await DioFactory.getDio();
  di.registerLazySingleton<ApiClient>(() => ApiClient(dio));

  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
