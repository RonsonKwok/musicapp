import 'package:flutter/material.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';

class MusicSearchBar extends StatelessWidget {
  const MusicSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: 'Enter a song or artist name to search',
        contentPadding: EdgeInsets.all(20.0),
      ),
      onChanged: MusicListController.to.searchKey,
    );
  }
}
