import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:seo_renderer/helpers/robot_detector_web.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/app/router/go_router.dart';
import 'package:tattoos/data/services/controller.dart';
import 'package:tattoos/dependency_injection/injection.dart';
import 'package:tattoos/generated/l10n.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Injection().loadDependencies();
  setPathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
    ]);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.black,
      ),
    );

    return RobotDetector(
      debug: false,
      child: HeroControllerScope(
        controller: MaterialApp.createMaterialHeroController(),
        child: MaterialApp.router(
          title: AppConstants.titleWeb,
          color: AppColors.black,
          theme: ThemeData(
            fontFamily: AppConstants.fontFamily,
            primaryColor: AppColors.black,
            brightness: Brightness.dark,
            primarySwatch: Colors.grey,
          ),
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
          locale: Locale(_controller.language.value),
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          routerConfig: goRouter,
        ),
      ),
    );
  }
}
