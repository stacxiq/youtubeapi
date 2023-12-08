import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Category {
  final String name;
  final IconData image;
  Category({required this.name, required this.image});
}

final categories = [
  Category(name: 'برمجة', image: Iconsax.code),
  Category(name: 'تجارة الكترونية', image: Iconsax.shopping_bag),
  Category(name: 'تطوير تطبيقات', image: Iconsax.mobile_programming),
  Category(name: 'تظوير واجهات ', image: Iconsax.designtools),
  Category(name: 'تطوير مواقع', image: Icons.web),
];
