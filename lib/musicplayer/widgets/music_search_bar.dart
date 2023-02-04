import 'package:flutter/material.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';

class MusicSearchBar extends StatelessWidget {
  const MusicSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: MusicListController.to.searchKey,
    );
  }
}
