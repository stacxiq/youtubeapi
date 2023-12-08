import 'package:elearning/features/home/model/video.dart';
import 'package:elearning/features/video_detail/view/video_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, required this.video});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => VideoDetailScreen(
              video: video,
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height * 0.15,
            width: context.width,
            child: Image.network(
              video.snippet.thumbnails.medium.url,
              fit: BoxFit.fill,
            ),
          ),
          Gap(context.height * 0.01),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  video.snippet.title,
                  maxLines: 2,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(context.height * 0.004),
                Text(
                  DateFormat('yy-MMMM-d').format(video.snippet.publishedAt),
                  maxLines: 2,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
