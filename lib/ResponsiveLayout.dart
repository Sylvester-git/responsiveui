//This is the appropriate method for making responsive layouts
import 'package:flutter/material.dart';
import 'package:responsive_ui/Dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget moblebody;
  final Widget desktopbody;
  const ResponsiveLayout(
      {Key? key, required this.moblebody, required this.desktopbody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Constraint is used here to check for the size of the app.
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobilewidth) {
        return moblebody;
      } else {
        return desktopbody;
      }
    });
  }
}
