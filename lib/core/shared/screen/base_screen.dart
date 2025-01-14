import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;
  const BaseScreen({required this.child, this.padding, this.appBar, super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: SafeArea(
        child: Padding(
          padding: widget.padding ?? const EdgeInsets.all(20),
          child: widget.child,
        ),
      ),
    );
  }
}
