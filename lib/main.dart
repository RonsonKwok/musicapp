import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';
import 'package:musicapp/musicplayer/widgets/music_page.dart';

void main() {
  Get.lazyPut(() => MusicListController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Music Preview App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MusicPage(),
    );
  }
}
