import 'package:crynstagram/responsive/mobile_layout.dart';
import 'package:crynstagram/responsive/responsive.dart';
import 'package:crynstagram/responsive/web_layout.dart';
import 'package:crynstagram/utils/colors.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crynstagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreen(), webScreenLayout: WebScreen() ),
    );
  }
}
