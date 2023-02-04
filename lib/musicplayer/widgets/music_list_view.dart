import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';

class SomeWidget extends StatefulWidget {
  const SomeWidget({super.key});

  @override
  State<SomeWidget> createState() => _SomeWidgetState();
}

class _SomeWidgetState extends State<SomeWidget> {
  @override
  Widget build(BuildContext context) {
    // final controller = MusicListController
    // controller.musicItems.
    return Obx(() {
      return ListView(
          children: MusicListController.to.musicItems
              .map((item) => ListTile(title: Text(item.trackName)))
              .toList());
    });
  }
}
