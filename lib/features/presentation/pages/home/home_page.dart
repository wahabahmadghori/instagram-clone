import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intagram_clone/features/presentation/pages/post/comment/comment_page.dart';
import 'package:intagram_clone/features/presentation/pages/post/update_post_page.dart';

import '../../../../const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: SvgPicture.asset(
          'assets/ic_instagram.svg',
          height: 32,
          color: primaryColor,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              MaterialCommunityIcons.facebook_messenger,
              color: primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: primaryColor),
                      ),
                      sizeHor(10),
                      const Text(
                        'UserName',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      _showModelBottomSheet(context);
                    },
                    child: const Icon(
                      Icons.more_vert,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                color: secondaryColor,
              ),
              sizeVer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, PageConst.commentPage),
                        child: const Icon(
                          Feather.message_circle,
                          color: primaryColor,
                        ),
                      ),
                      sizeHor(10),
                      const Icon(
                        Feather.send,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.bookmark,
                    color: primaryColor,
                  )
                ],
              ),
              sizeVer(10),
              const Text(
                '34 Likes',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              sizeVer(10),
              Row(
                children: [
                  const Text(
                    'UserName',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                  sizeHor(10),
                  const Text(
                    'Some Description',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              sizeVer(10),
              const Text(
                'view all 10 comments',
                style: TextStyle(color: darkGreyColor),
              ),
              sizeVer(10),
              const Text(
                '4/09/2022',
                style: TextStyle(color: darkGreyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            decoration: BoxDecoration(color: backGroundColor.withOpacity(.8)),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "More Options",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: primaryColor),
                      ),
                    ),
                    sizeVer(8),
                    const Divider(
                      thickness: 1,
                      color: secondaryColor,
                    ),
                    sizeVer(8),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Delete Post',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    sizeVer(7),
                    const Divider(
                      thickness: 1,
                      color: secondaryColor,
                    ),
                    sizeVer(7),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PageConst.updatePostPage);
                        },
                        child: const Text(
                          "Update Post",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    sizeVer(7),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
