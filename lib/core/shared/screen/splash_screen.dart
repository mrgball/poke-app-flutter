import 'package:flutter/material.dart';
import 'package:poke_app/core/config/extensions.dart';

import '../../config/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Redirect to home screen after 2 sec showed up
    Future.delayed(
      const Duration(milliseconds: 2000),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        RouteNames.home,
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PokeDex',
          style: context.text.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
