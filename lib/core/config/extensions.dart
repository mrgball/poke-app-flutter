import 'package:flutter/material.dart';

extension ScreenUtil on BuildContext {
  TextStyle get headline1 => Theme.of(this).textTheme.displayLarge!;
  TextStyle get headline2 => Theme.of(this).textTheme.displayMedium!;
  TextStyle get bodyText1 => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyText2 => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get subtitle1 => Theme.of(this).textTheme.titleMedium!;
  TextStyle get subtitle2 => Theme.of(this).textTheme.titleSmall!;

  TextTheme get text => Theme.of(this).textTheme;
}
