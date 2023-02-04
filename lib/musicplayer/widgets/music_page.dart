import 'package:flutter/material.dart';
import 'package:musicapp/musicplayer/widgets/music_search_bar.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    //add search bar and list view together
    //list view need to be put into expanded (cloumn row)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itunes Music Preview App',
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const MusicSearchBar(),
    );
  }
}
