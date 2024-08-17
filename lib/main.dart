import 'package:flutter/material.dart';
import 'package:netflix/leading_page.dart';
import 'package:netflix/login_page.dart';
import 'package:netflix/video_player.dart';
import 'package:get/get.dart';

import 'experimatalcode.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
