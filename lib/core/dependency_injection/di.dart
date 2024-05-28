import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/supervisor_register/presentation/manager/supervisor_register_cubit.dart';
import '../../features/auth/user_register/presentation/manager/user_register_cubit.dart';
import '../../features/main/home/presentation/manager/home_cubit.dart';

final di = GetIt.instance;

Future<void> init() async {
  /// Cubits -> useCases -> Repos -> Services

  /// <!------ SUPERVISOR REGISTER ------->
  di.registerFactory(() => SupervisorRegisterCubit());

  /// <!------ USER REGISTER ------->
  di.registerFactory(() => UserRegisterCubit());

  /// <!------ HOME ------->
  di.registerFactory(() => HomeCubit());

  // di.registerFactory(() => LoginCubit(loginUseCase: di()));
  // di.registerLazySingleton(() => LoginUseCase(loginRepo: di()));
  // di.registerLazySingleton<LoginRepo>(() => LoginRepoImpl(loginService: di()));
  // di.registerLazySingleton<LoginService>(() => LoginServiceImpl());

  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
