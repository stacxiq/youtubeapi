import 'dart:math';

import 'package:elearning/features/home/model/video.dart';
import 'package:elearning/features/home/model/youtube_videos_result.dart';
import 'package:elearning/repositories/video_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Video> latestVideo = <Video>[].obs;
  RxList<Video> sliderVideo = <Video>[].obs;
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    fetchVideos();
  }

  fetchVideos() async {
    final videosResponse = await videoRepo.fetchVideos();

    videosResponse.fold((l) {
      isLoading.value = false;
      print(l);
    }, (r) {
      print(r.data);
      isLoading.value = false;
      final result = YoutubeVideoResult.fromJson(r.data);
      latestVideo.value = result.items;
      for (var i = 0; i < 3; i++) {
        int rand = Random().nextInt(result.items.length - 1);
        sliderVideo.add(result.items[rand]);
      }
    });
  }
}
