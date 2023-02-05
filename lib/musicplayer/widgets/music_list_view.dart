import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';

class MusicListView extends StatefulWidget {
  const MusicListView({super.key});

  @override
  State<MusicListView> createState() => _MusicListViewState();
}

class _MusicListViewState extends State<MusicListView> {
  @override
  Widget build(BuildContext context) {
    // final controller = MusicListController
    // controller.musicItems.
    return Obx(() {
      return ListView(
          padding: const EdgeInsets.all(16),
          children: MusicListController.to.musicItems
              .map((item) => ListTile(
                    title: Text(
                      item.trackName,
                    ),
                    trailing: const Icon(Icons.play_arrow),
                    onTap: () {},
                  ))
              .toList());
    });
  }
}
