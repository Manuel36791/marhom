import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marhom/features/auth/supervisor_basic_info/domain/use_cases/helpers_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/supervisor_basic_info/data/repositories/supervisor_basic_info_repo_impl.dart';
import '../../features/auth/supervisor_basic_info/domain/repositories/supervisor_basic_info_repo.dart';
import '../../features/auth/supervisor_basic_info/domain/use_cases/supervisor_basic_info_use_class.dart';
import '../../features/auth/supervisor_basic_info/presentation/manager/supervisor_basic_info_cubit.dart';
import '../../features/auth/supervisor_login/data/repositories/supervisor_login_repo_impl.dart';
import '../../features/auth/supervisor_login/presentation/manager/supervisor_login_cubit.dart';
import '../../features/auth/supervisor_register/data/repositories/supervisor_register_repo_impl.dart';
import '../../features/auth/supervisor_login/domain/repositories/supervisor_login_repo.dart';
import '../../features/auth/supervisor_register/domain/repositories/supervisor_register_repo.dart';
import '../../features/auth/supervisor_login/domain/use_cases/supervisor_login_use_case.dart';
import '../../features/auth/supervisor_register/domain/use_cases/supervisor_register_step_one_use_case.dart';
import '../../features/auth/supervisor_register/domain/use_cases/supervisor_register_step_two_use_case.dart';
import '../../features/auth/supervisor_register/presentation/manager/supervisor_register_cubit.dart';
import '../../features/auth/user_register/data/repositories/user_register_repo_impl.dart';
import '../../features/auth/user_register/domain/repositories/user_register_or_login_repo.dart';
import '../../features/auth/user_register/domain/use_cases/user_login_use_case.dart';
import '../../features/auth/user_register/domain/use_cases/user_register_use_case.dart';
import '../../features/auth/user_register/presentation/manager/user_register_cubit.dart';
import '../../features/main/home/presentation/manager/home_cubit.dart';
import '../../features/main/supervisor_home/data/repositories/view_messages_repo_impl.dart';
import '../../features/main/supervisor_home/domain/repositories/view_messages_repo.dart';
import '../../features/main/supervisor_home/domain/use_cases/view_messages_use_case.dart';
import '../../features/main/supervisor_home/presentation/manager/view_messages_cubit.dart';
import '../../features/profile/about_us/data/repositories/about_us_repo_impl.dart';
import '../../features/profile/about_us/domain/repositories/about_us_repo.dart';
import '../../features/profile/about_us/domain/use_cases/about_us_use_case.dart';
import '../../features/profile/about_us/presentation/manager/about_us_cubit.dart';
import '../../features/profile/contact_us/data/repositories/contact_us_repo_impl.dart';
import '../../features/profile/contact_us/domain/repositories/contact_us_repo.dart';
import '../../features/profile/contact_us/domain/use_cases/contact_us_use_case.dart';
import '../../features/profile/contact_us/presentation/manager/contact_us_cubit.dart';
import '../../features/profile/fatwas_and_faqs/data/repositories/qa_repo_impl.dart';
import '../../features/profile/fatwas_and_faqs/domain/repositories/aq_repo.dart';
import '../../features/profile/fatwas_and_faqs/domain/use_cases/faqs_use_case.dart';
import '../../features/profile/fatwas_and_faqs/domain/use_cases/fatwas_use_case.dart';
import '../../features/profile/fatwas_and_faqs/presentation/manager/qa_cubit.dart';
import '../../features/profile/map/presentation/manager/maps_cubit.dart';
import '../../features/profile/send_message/data/repositories/send_message_repo_impl.dart';
import '../../features/profile/send_message/domain/repositories/send_message_repo.dart';
import '../../features/profile/send_message/domain/use_cases/send_message_use_case.dart';
import '../../features/profile/send_message/presentation/manager/send_message_cubit.dart';
import '../../features/profile/supervisor_delete_account/data/repositories/supervisor_delete_account_repo_impl.dart';
import '../../features/profile/supervisor_delete_account/domain/repositories/supervisor_delete_account_repo.dart';
import '../../features/profile/supervisor_delete_account/domain/use_cases/supervisor_delete_account_use_case.dart';
import '../../features/profile/supervisor_delete_account/presentation/manager/supervisor_delete_account_cubit.dart';
import '../../features/profile/supervisor_edit_profile/data/repositories/supervisor_edit_profile_repo_impl.dart';
import '../../features/profile/supervisor_edit_profile/domain/repositories/supervisor_edit_profile_repo.dart';
import '../../features/profile/supervisor_edit_profile/domain/use_cases/supervisor_edit_profile_use_case.dart';
import '../../features/profile/supervisor_edit_profile/presentation/manager/supervisor_edit_profile_cubit.dart';
import '../../features/profile/user_delete_account/data/repositories/user_delete_account_repo_impl.dart';
import '../../features/profile/user_delete_account/domain/repositories/user_delete_account_repo.dart';
import '../../features/profile/user_delete_account/domain/use_cases/user_delete_account_use_case.dart';
import '../../features/profile/user_delete_account/presentation/manager/user_delete_account_cubit.dart';
import '../../features/profile/user_edit_profile/data/repositories/supervisor_edit_profile_repo_impl.dart';
import '../../features/profile/user_edit_profile/domain/repositories/user_edit_profile_repo.dart';
import '../../features/profile/user_edit_profile/domain/use_cases/user_edit_profile_use_case.dart';
import '../../features/profile/user_edit_profile/presentation/manager/user_edit_profile_cubit.dart';
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
        checkPhoneUseCase: di(),
      ));
  di.registerLazySingleton(
      () => SupervisorRegisterStepOneUseCase(supervisorRegisterRepo: di()));
  di.registerLazySingleton(
      () => SupervisorRegisterStepTwoUseCase(supervisorRegisterRepo: di()));
  di.registerLazySingleton<SupervisorRegisterRepo>(
      () => SupervisorRegisterRepoImpl(supervisorRegisterService: di()));

  /// <!------ SUPERVISOR LOGIN ------->
  di.registerFactory(() => SupervisorLoginCubit(supervisorLoginUseCase: di()));
  di.registerLazySingleton(
      () => SupervisorLoginUseCase(supervisorLoginRepo: di()));
  di.registerLazySingleton<SupervisorLoginRepo>(
      () => SupervisorLoginRepoImpl(supervisorLoginService: di()));

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

  /// <!------ SUPERVISOR DELETE ACCOUNT ------->
  di.registerFactory(
      () => SupervisorDeleteAccountCubit(supervisorDeleteAccountUseCase: di()));
  di.registerLazySingleton(
      () => SupervisorDeleteAccountUseCase(supervisorDeleteAccountRepo: di()));
  di.registerLazySingleton<SupervisorDeleteAccountRepo>(() =>
      SupervisorDeleteAccountRepoImpl(supervisorDeleteAccountService: di()));

  /// <!------ USER DELETE ACCOUNT ------->
  di.registerFactory(
      () => UserDeleteAccountCubit(userDeleteAccountUseCase: di()));
  di.registerLazySingleton(
      () => UserDeleteAccountUseCase(userDeleteAccountRepo: di()));
  di.registerLazySingleton<UserDeleteAccountRepo>(
      () => UserDeleteAccountRepoImpl(userDeleteAccountService: di()));

  /// <!------ USER EDIT PROFILE ------->
  di.registerFactory(() => UserEditProfileCubit(userEditProfileUseCase: di()));
  di.registerLazySingleton(
      () => UserEditProfileUseCase(userEditProfileRepo: di()));
  di.registerLazySingleton<UserEditProfileRepo>(
      () => UserEditProfileRepoImpl(userEditProfileService: di()));

  /// <!------ HOME ------->
  di.registerFactory(() => HomeCubit());

  /// <!------ MAPS ------->
  di.registerFactory(() => MapsCubit());

  /// <!------ SEND MESSAGE ------->
  di.registerFactory(() => SendMessageCubit(sendMessageUseCase: di()));
  di.registerLazySingleton(() => SendMessageUseCase(sendMessageRepo: di()));
  di.registerLazySingleton<SendMessageRepo>(
      () => SendMessageRepoImpl(sendMessageService: di()));

  /// <!------ VIEW MESSAGES ------->
  di.registerFactory(() => ViewMessagesCubit(viewMessagesUseCase: di()));
  di.registerLazySingleton(() => ViewMessagesUseCase(viewMessagesRepo: di()));
  di.registerLazySingleton<ViewMessagesRepo>(
      () => ViewMessagesRepoImpl(viewMessagesService: di()));

  /// <!------ VIEW MESSAGES ------->
  di.registerFactory(() =>
      SupervisorBasicInfoCubit(helpersUseCase: di(), basicInfoUseCase: di()));
  di.registerLazySingleton(() => HelpersUseCase(supervisorBasicInfoRepo: di()));
  di.registerLazySingleton(
      () => SupervisorBasicInfoUseCase(supervisorBasicInfoRepo: di()));
  di.registerLazySingleton<SupervisorBasicInfoRepo>(
      () => SupervisorBasicInfoRepoImpl(supervisorBasicInfoService: di()));

  /// <!------ CONTACT US ------->
  di.registerFactory(() =>
      ContactUsCubit(contactUsUseCase: di()));
  di.registerLazySingleton(
      () => ContactUsUseCase(contactUsRepo: di()));
  di.registerLazySingleton<ContactUsRepo>(
      () => ContactUsRepoImpl(contactUsService: di()));

  /// <!------ ABOUT US ------->
  di.registerFactory(() =>
      AboutUsCubit(aboutUsUseCase: di()));
  di.registerLazySingleton(
      () => AboutUsUseCase(aboutUsRepo: di()));
  di.registerLazySingleton<AboutUsRepo>(
      () => AboutUsRepoImpl(aboutUsService: di()));

  /// <!------ QUESTIONS ------->
  di.registerFactory(() =>
      QaCubit(fatwasUseCase: di(), faqsUseCase: di()));
  di.registerLazySingleton(
      () => FAQsUseCase(qaRepo : di()));
  di.registerLazySingleton(
      () => FatwasUseCase(qaRepo: di()));
  di.registerLazySingleton<QARepo>(
      () => QARepoImpl(qaService: di()));

  /// <!------ API CLIENT ------->
  Dio dio = await DioFactory.getDio();
  di.registerLazySingleton<ApiClient>(() => ApiClient(dio));

  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
