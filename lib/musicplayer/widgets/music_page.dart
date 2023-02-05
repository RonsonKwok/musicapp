import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/controllers/audio_player_controller.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';
import 'package:musicapp/musicplayer/widgets/music_list_view.dart';
import 'package:musicapp/musicplayer/widgets/music_search_bar.dart';

class MusicPage extends StatelessWidget {
  final musicListController = Get.put(MusicListController());
  final audioPlayerController = Get.put((AudioPlayerController));

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
        body: Column(children: [
          SizedBox(width: double.infinity, child: MusicSearchBar()),
          Expanded(child: MusicListView())
        ]));
  }
}
