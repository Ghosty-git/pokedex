
import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:poki/generated/codegen_loader.g.dart';
import 'package:poki/themes/dark_theme.dart';
import 'package:poki/themes/light_theme.dart';

import 'screens/home_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ru')],
      path: 'images/assets', // <-- change the path of the translation files 
      fallbackLocale: Locale('en', 'US'),
      assetLoader: CodegenLoader(),
      child: Pokemon()
    ),);
}

class Pokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      // darkTheme: darkTheme,
      theme: lightTheme,
      home: HomeScreen(),
    );
  }
}