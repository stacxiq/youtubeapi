import 'package:elearning/core/constants/images.dart';
import 'package:elearning/features/home/model/video.dart';
import 'package:elearning/features/home/view/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TopHeaderWidget extends StatelessWidget {
  const TopHeaderWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.06,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'مرحباً بك!..',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'ماذا تود ان تتعلم؟',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.grey,
                    ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              const UserAvatar(),
              Gap(context.width * 0.02),
              const Icon(
                Iconsax.notification,
                size: 26,
              ),
            ],
          )
        ],
      ),
    );
  }
}
