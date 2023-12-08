
import 'package:elearning/core/constants/colors.dart';
import 'package:elearning/features/home/model/category.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return                     SizedBox(
                      height: context.height * 0.08,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kprimaryColor.withOpacity(0.8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                textBaseline: TextBaseline.ideographic,
                                children: [
                                  Icon(
                                    categories[index].image,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Gap(context.width * 0.02),
                                  Text(categories[index].name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            );
                          }),
                    );
  }
}