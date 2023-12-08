import 'dart:math';

import 'package:elearning/features/home/model/video_card.dart';
import 'package:flutter/material.dart';

import 'package:elearning/features/home/model/video.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LatestVideosWidget extends StatelessWidget {
  final List<Video> videos;
  final bool enabled;
  const LatestVideosWidget({
    Key? key,
    required this.videos,
    required this.enabled,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: context.height * 0.25,
      child: Skeletonizer(
        enabled: enabled,
        child: ListView.separated(
          itemCount: videos.length < 10 ? videos.length : 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            int rand = Random().nextInt(videos.length - 1);
            return Container(
              width: context.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: VideoCard(
                video: videos[rand],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Gap(context.width * 0.02);
          },
        ),
      ),
    );
  }
}
