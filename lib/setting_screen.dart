import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:poki/generated/locale_keys.g.dart';

import 'nav_bar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.translate), onPressed: () { 
        if (context.locale == Locale('ru')) {
          context.setLocale(Locale("en"));
        } else {
          context.setLocale(Locale("ru"));
        }
       },), title: Text(LocaleKeys.setting_screen.tr()),),
      bottomNavigationBar: const NavBar(currentPage: 1,),);
  }
}