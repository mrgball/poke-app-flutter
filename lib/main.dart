import 'package:flutter/material.dart';
import 'package:poke_app/core/config/route.dart';
import 'package:poke_app/core/config/theme.dart';
import 'package:poke_app/core/shared/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      onGenerateRoute: MyRouter.generateRoute,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      home: const SplashScreen(),
    );
  }
}
