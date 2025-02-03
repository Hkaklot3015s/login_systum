import 'package:flutter/material.dart';

class GoBackground extends StatelessWidget {
  Widget child;

  GoBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        child: SafeArea(child: child),
      ),
    );
  }
}
