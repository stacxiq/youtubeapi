import 'package:elearning/features/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selected = 0;
  final _pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: (value) {
          setState(() {
            _selected = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Iconsax.book_1), label: 'Books'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.gallery), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user), label: 'Courses'),
        ],
      ),
    );
  }
}
