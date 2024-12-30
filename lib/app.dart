import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostore/features/on_boarding/screen/on_boarding_view.dart';
import 'package:ostore/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      themeMode: ThemeMode.system,
      theme: OstoreAppTheme.lightTheme,
      darkTheme: OstoreAppTheme.darkTheme,
      home: OnBoardingView(),
    );
  }
}
