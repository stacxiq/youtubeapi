import 'package:elearning/core/constants/images.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: CircularProgressIndicator(
            value: 0.25,
            backgroundColor: Colors.grey.shade300,
          ),
        ),
        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(Assets.resourceImagesAvatar),
        ),
      ],
    );
  }
}
