import 'package:flutter/material.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';

class MusicSearchBar extends StatelessWidget {
  const MusicSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchtext = TextEditingController();

    return TextField(
      controller: searchtext,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: 'Enter a song or artist name to search',
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            searchtext.clear();
          },
        ),
        contentPadding: EdgeInsets.all(20.0),
      ),
      onChanged: MusicListController.to.searchKey,
    );
  }
}
