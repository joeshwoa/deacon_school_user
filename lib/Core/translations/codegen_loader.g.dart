
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart' show AssetLoader;
import 'package:deacon_school_user/Core/translations/utils/en.dart';
import 'package:deacon_school_user/Core/translations/utils/ar.dart';



class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en,
  };
}
