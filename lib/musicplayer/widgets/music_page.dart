import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/controllers/music_list_controller.dart';
import 'package:musicapp/musicplayer/widgets/music_list_view.dart';
import 'package:musicapp/musicplayer/widgets/music_search_bar.dart';

class MusicPage extends StatelessWidget {
  final musicListController = Get.put(MusicListController());

  @override
  Widget build(BuildContext context) {
    //add search bar and list view together
    //list view need to be put into expanded (cloumn row)
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Music Preview',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35)),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(children: [
          SizedBox(width: double.infinity, child: MusicSearchBar()),
          Expanded(child: MusicListView())
        ]));
  }
}
