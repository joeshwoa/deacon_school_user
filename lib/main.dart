import 'package:deacon_school_user/Core/cubit/layout_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:deacon_school_user/Core/services/custom_bloc_observer.dart';
import 'package:deacon_school_user/Core/services/shared_pref_services.dart';
import 'package:deacon_school_user/Core/translations/codegen_loader.g.dart';
import 'package:deacon_school_user/Core/unit/app_routes.dart';
import 'package:deacon_school_user/Core/unit/border_data.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/constant_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  Bloc.observer = CustomBlocObserver();
  await SharedPreferencesServices.init();

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']??'',
    anonKey: dotenv.env['SUPABASE_ANON_KEY']??'',
  );

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) async {
    runApp(EasyLocalization(
        path: 'assets/translations',
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        fallbackLocale: Locale(ConstantData.kDefaultLung),
        startLocale: Locale(SharedPreferencesServices.getData(key: ConstantData.kLung)??ConstantData.kDefaultLung),
        assetLoader: const CodegenLoader(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider (create: (BuildContext context) => LayoutCubit(),),
            /*BlocProvider (create: (BuildContext context) => BookTaxiCubit(),),
            BlocProvider (create: (BuildContext context) => MyBookingCubit(),),*/
          ],
          child: const MyApp(),)));
  });


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    StyleData.init(context);
    BorderData.init(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ColorData.primaryColor
    ));

    return MaterialApp.router(
      title: 'شماس مدرسة الِشمامسة',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: ColorData.primaryColor),
      ),
      routerConfig: AppRouter.router,
    );
  }
}

