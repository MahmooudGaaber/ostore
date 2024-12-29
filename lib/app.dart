import 'package:flutter/material.dart';
import 'package:ostore/util/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: OstoreAppTheme.lightTheme,
      darkTheme: OstoreAppTheme.darkTheme,
    );
  }
}