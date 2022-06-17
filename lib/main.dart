import 'package:flutter/material.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/home.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/Trend.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/post_mobile.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/profile_mobile.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}

