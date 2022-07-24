import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  ResponsiveLayout(this.mobileScreenLayout, this.webScreenLayout);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:  (context, constraints) {
        if (constraints.maxWidth > 900) {
          return webScreenLayout;
        }
          return mobileScreenLayout;
      },
    );
  }
}