import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/musicplayer/models/music_item.dart';
import 'package:musicapp/musicplayer/repositories/music_repository.dart';

enum Status { Initial, Loading, Loaded, Error }

class MusicListController extends GetxController {
  final musicItems = RxList<MusicItem>([]); //put all state here
  final searchKey = "".obs;
  final status = Status.Initial.obs;
  final musicRepository = Get.find<MusicRepository>();

  static MusicListController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    debounce(searchKey, (String newSearchKey) async {
      search(newSearchKey);
    }, time: const Duration(milliseconds: 450));
  }

  Future<void> search(String searchKey) async {
    status.value = Status.Loading;
    try {
      final result = await musicRepository.getMusicItems(searchKey);
      musicItems.assignAll(result);
      status.value = Status.Loaded;
    } catch (error) {
      status.value = Status.Error;
    }
  }
}
