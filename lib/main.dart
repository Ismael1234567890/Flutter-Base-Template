import 'package:flutter_localizations/flutter_localizations.dart';
import 'configs/injectiondepency/injection.dart' as di;
import '/configs/routes/app_routes.dart';
import '/configs/routes/page_name.dart';
import '/configs/translations/lang.dart';
import '/constants/app_export.dart';
import '/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // for responsive screen with ScreenUtil package
    return ScreenUtilInit(
        designSize: const Size(414, 902),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: "App Template",
            debugShowCheckedModeBanner: false,
            //----------theme configuration------------
            theme: AppTheme.myLightTheme,
            darkTheme: AppTheme.myDarkTheme,
            //-----------------------------------------
            //--------Language configuration-----------
            supportedLocales: const [
              Locale('fr', 'FR'),
              Locale('en', 'US'),
            ],
            locale: Get.locale ?? const Locale('fr', 'FR'),
            fallbackLocale: const Locale('fr', 'FR'),
            translations: MyTranslation(),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            //-----------------------------------------
            //-------------
            //
            //
            //--getx routing--------------
            getPages: AppPages.routes,
            initialRoute: MyRoutes.initial,
            navigatorObservers: const [],
            //-----------------------------------------
          );
        });
  }
}
