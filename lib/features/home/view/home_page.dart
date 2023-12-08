import 'package:elearning/core/constants/colors.dart';
import 'package:elearning/features/home/controller/home_controller.dart';
import 'package:elearning/features/home/model/category.dart';
import 'package:elearning/features/home/view/widgets/categories.dart';
import 'package:elearning/features/home/view/widgets/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => SingleChildScrollView(
            child: Visibility(
              visible: !homeController.isLoading.value,
              replacement: SizedBox(
                height: context.height,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TopHeaderWidget(),
                    Gap(context.height * 0.02),
                    SliderWidget(
                      sliderVideo: homeController.sliderVideo,
                    ),
                    Gap(context.height * 0.01),
                    const CategoryWidget(),
                    Gap(context.height * 0.01),
                    const Text("احدث الفيديوهات"),
                    Gap(context.height * 0.01),
                    Obx(
                      () => LatestVideosWidget(
                        videos: homeController.latestVideo,
                        enabled: homeController.isLoading.value,
                      ),
                    ),
                    Gap(context.height * 0.02),
                    const Text("الفيديوهات المقترحة"),
                    Gap(context.height * 0.01),
                    Obx(
                      () => LatestVideosWidget(
                        videos: homeController.latestVideo,
                        enabled: homeController.isLoading.value,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
