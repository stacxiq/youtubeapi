import 'package:elearning/core/constants/colors.dart';
import 'package:elearning/features/home/model/video.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailScreen extends StatelessWidget {
  const VideoDetailScreen({super.key, required this.video});

  final Video video;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل الفيديو'),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: video.id.videoId,
              flags: const YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
              ),
            ),
            showVideoProgressIndicator: true,
            progressIndicatorColor: kprimaryColor,
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      video.snippet.channelTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                        DateFormat('yy-MMMM-d')
                            .format(video.snippet.publishTime),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        )),
                  ],
                ),
                Gap(context.height * 0.01),
                Text(video.snippet.title,
                    style: const TextStyle(fontWeight: FontWeight.w300)),
                Gap(context.height * 0.01),
                Text(
                  video.snippet.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
