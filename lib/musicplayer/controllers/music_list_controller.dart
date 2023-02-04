import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/models/music_item.dart';
import 'package:musicapp/musicplayer/repositories/music_repository.dart';

class MusicListController extends GetxController {
  final musicItems = RxList<MusicItem>([]); //put all state here
  final searchKey = "".obs;
  final musicRepository = Get.find<MusicRepository>();

  static MusicListController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    debounce(searchKey, (String newSearchKey) async {
      final result = await musicRepository.getMusicItems(newSearchKey);
      musicItems.assignAll(result);
    }, time: const Duration(milliseconds: 450));
  }
}
