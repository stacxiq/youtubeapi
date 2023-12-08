import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elearning/features/home/model/video.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key, required this.sliderVideo});

  final List<Video> sliderVideo;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliderVideo
          .map(
              (element) => Image.network(element.snippet.thumbnails.medium.url))
          .toList(),
      options: CarouselOptions(
        height: context.height * 0.22,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
