import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intagram_clone/const.dart';
import 'package:intagram_clone/features/presentation/pages/activity/activity_page.dart';
import 'package:intagram_clone/features/presentation/pages/home/home_page.dart';
import 'package:intagram_clone/features/presentation/pages/post/upload_post_page.dart';
import 'package:intagram_clone/features/presentation/pages/profile/profile_page.dart';
import 'package:intagram_clone/features/presentation/pages/search/search_page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index) {
    _pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          backgroundColor: backGroundColor,
          onTap: navigationTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                MaterialCommunityIcons.home_variant,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.md_search,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.md_add_circle,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: primaryColor,
              ),
            ),
          ]),
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomePage(),
          SearchPage(),
          UploadPostPage(),
          ActivityPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
