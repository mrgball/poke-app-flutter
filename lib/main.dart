import 'package:flutter/material.dart';
import 'package:poke_app/core/config/route.dart';
import 'package:poke_app/core/config/route_names.dart';
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
  @override
  void initState() {
    super.initState();

    // Redirect to home screen after 0.5 showed up
    Future.delayed(
      const Duration(milliseconds: 500),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        RouteNames.home,
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      onGenerateRoute: MyRouter.generateRoute,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
