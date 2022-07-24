import 'package:flutter/material.dart';
import './responsive/responsive_layout.dart';
import './screen/mobile_screen_layout.dart';
import './screen/web_screen_layout.dart';
import './colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
        const MobileScreenLayout(),
        const WebScreenLayout(),
      ),
    );
  }
}
