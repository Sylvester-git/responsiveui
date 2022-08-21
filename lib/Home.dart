import 'package:flutter/material.dart';
import 'package:responsive_ui/Body/Mobilebody.dart';
import 'package:responsive_ui/ResponsiveLayout.dart';
import './Body/Desktopbody.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          ResponsiveLayout(moblebody: MobileBody(), desktopbody: DesktopBody()),
    );
  }
}
