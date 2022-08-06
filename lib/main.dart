import 'package:egegen/screens/home_screen.dart';
import 'package:egegen/theme/theme_data.dart';
import 'package:egegen/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.customLightTheme,
      locale: const Locale("tr", "TR"),
      fallbackLocale: const Locale('en', 'UK'),
      translations: Translation(),
      home: const HomeScreen(),
    );
  }
}
