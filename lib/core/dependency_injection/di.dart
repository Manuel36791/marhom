import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/supervisor_register/presentation/manager/supervisor_register_cubit.dart';
import '../../features/auth/user_register/data/repositories/user_register_repo_impl.dart';
import '../../features/auth/user_register/domain/repositories/user_register_or_login_repo.dart';
import '../../features/auth/user_register/domain/use_cases/user_register_use_case.dart';
import '../../features/auth/user_register/presentation/manager/user_register_cubit.dart';
import '../../features/main/home/presentation/manager/home_cubit.dart';
import '../service/api_client.dart';
import '../service/dio_factory.dart';
import '../shared/api/data/repositories/check_phone_repo_impl.dart';
import '../shared/api/domain/repositories/check_phone_repo.dart';
import '../shared/api/domain/use_cases/check_phone_use_case.dart';

final di = GetIt.instance;

Future<void> init() async {
  /// Cubits -> useCases -> Repos -> Services

  /// <!------ SUPERVISOR REGISTER ------->
  di.registerFactory(() => SupervisorRegisterCubit());

  /// <!------ CHECK PHONE ------->
  di.registerLazySingleton(() => CheckPhoneUseCase(checkPhoneRepo: di()));
  di.registerLazySingleton<CheckPhoneRepo>(
      () => CheckPhoneRepoImpl(checkPhoneService: di()));

  /// <!------ USER REGISTER ------->
  di.registerFactory(() => UserRegisterCubit(userRegisterUseCase: di(), checkPhoneUseCase: di(), userLoginUseCase: di()));
  di.registerLazySingleton(() => UserRegisterUseCase(userRegisterOrLoginRepo: di()));
  di.registerLazySingleton<UserRegisterOrLoginRepo>(
      () => UserRegisterOrLoginRepoImpl(userRegisterService: di()));

  /// <!------ HOME ------->
  di.registerFactory(() => HomeCubit());

  /// <!------ API CLIENT ------->
  Dio dio = await DioFactory.getDio();
  di.registerLazySingleton<ApiClient>(() => ApiClient(dio));

  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
