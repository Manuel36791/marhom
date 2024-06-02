import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marhom/features/auth/supervisor_basic_info/presentation/pages/supervisor_basic_info_view.dart';

import 'core/dependency_injection/di.dart' as di;
import 'core/helpers/cache_helper.dart';
import 'core/router/router_generator.dart';
import 'core/shared/widgets/custom_error_widget.dart';
import 'core/utils/app_images.dart';
import 'core/utils/app_strings.dart';
import 'core/utils/cubit_observer.dart';
import 'generated/l10n.dart';
import 'main_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppCubitObserver();
  await ScreenUtil.ensureScreenSize();
  await di.init();
  await svgPreloader();

  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ErrorWidgetClass(
          errorDetails: errorDetails,
        ),
      ),
    );
  };

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await Firebase.initializeApp();
  // if (Platform.isAndroid) {
  //   FireBaseResources().android();
  // } else if (Platform.isIOS) {
  //   FireBaseResources().ios();
  // }

  var currentLocale = await CacheHelper.getLocal();
  var email = await CacheHelper.getData("email");
  var pass = await CacheHelper.getData("pass");
  debugPrint("Email: $email\n Pass: $pass");

  runApp(
    MyApp(
      currentLang: currentLocale,
    ),
  );
}

class MyApp extends StatefulWidget {
  final Locale currentLang;

  const MyApp({super.key, required this.currentLang});

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.changeLanguage(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale = const Locale("en");

  changeLanguage(Locale newLocale) {
    setState(() {
      locale = newLocale;
    });
  }

  @override
  void initState() {
    super.initState();
    locale = widget.currentLang;

    // FirebaseMessaging.onMessage.listen(
    //       (RemoteMessage message) {
    //     context.defaultSnackBar(
    //         message.notification?.title ?? AppConstants.unknownStringValue);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (ctx, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: locale,
          localizationsDelegates: const [
            S.delegate,
            CountryLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: AppStrings.appName,
          onGenerateRoute: AppRouters.routeGenerator,
          home: child,
        );
      },
      child: const SupervisorBasicInfoView(),
    );
  }
}
