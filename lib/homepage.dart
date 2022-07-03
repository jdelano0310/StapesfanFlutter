import 'package:flutter/material.dart';
import 'package:stapesFanFlutter/responsive/desktop_body.dart';
import 'package:stapesFanFlutter/responsive/mobile_body.dart';
import 'package:stapesFanFlutter/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: const MyMobileBody(),
        desktopBody: const MyDesktopBody(),
      ),
    );
  }
}
