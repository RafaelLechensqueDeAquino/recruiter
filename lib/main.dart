import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:recruiter/screens/homeScreen/home_screen.dart';
import 'package:recruiter/shared/themes/app_colors.dart';
// ignore: unused_import
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:recruiter/stores/focus_store.dart';
void main() {
  // GetIt.I.registerSingleton(AchievementStore());
  GetIt.I.registerSingleton(FocusStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget a.is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      title: 'Recruiter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: AppColors.primary,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(fontSize: 14),
              selectedItemColor: AppColors.secodary,
              unselectedItemColor: AppColors.background,
              unselectedLabelStyle: TextStyle(fontSize: 14)),
          fontFamily: 'Roboto'),
      home: const HomeScreen(),
    );
  }
}
