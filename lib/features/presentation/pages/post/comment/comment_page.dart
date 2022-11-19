import 'package:flutter/material.dart';
import 'package:intagram_clone/const.dart';
import 'package:intagram_clone/features/presentation/widgets/form_container_widget.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  bool _isUserReplaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const Text(
          "Comments",
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: darkGreyColor),
                    ),
                    sizeHor(10),
                    const Text(
                      "UserName",
                      style: TextStyle(
                          fontSize: 16,
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                sizeVer(10),
                const Text(
                  "This is beautiful space",
                  style: TextStyle(color: primaryColor),
                )
              ],
            ),
          ),
          sizeVer(10),
          const Divider(
            color: darkGreyColor,
          ),
          sizeVer(10),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: darkGreyColor),
                  ),
                  sizeHor(10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "UserName",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
                              ),
                              Icon(
                                Icons.favorite_outline,
                                size: 20,
                                color: primaryColor,
                              )
                            ],
                          ),
                          sizeVer(4),
                          const Text(
                            "ok this is",
                            style: TextStyle(color: primaryColor),
                          ),
                          sizeVer(4),
                          Row(
                            children: [
                              const Text(
                                "12/8/2022",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: darkGreyColor,
                                ),
                              ),
                              sizeHor(15),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isUserReplaying = !_isUserReplaying;
                                  });
                                },
                                child: const Text(
                                  "Replay",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: darkGreyColor,
                                  ),
                                ),
                              ),
                              sizeHor(15),
                              const Text(
                                "View Replays",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: darkGreyColor,
                                ),
                              ),
                            ],
                          ),
                          _isUserReplaying == true ? sizeVer(10) : sizeVer(0),
                          _isUserReplaying == true
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const FormContainerWidget(
                                      hintText: "Post your replay...",
                                    ),
                                    sizeVer(10),
                                    const Text(
                                      "Post",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                )
                              : const SizedBox(
                                  height: 0,
                                  width: 0,
                                ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _commentSection(),
        ],
      ),
    );
  }

  _commentSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: 55,
      width: double.infinity,
      color: Colors.grey[800],
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: darkGreyColor,
            ),
          ),
          sizeHor(10),
          Expanded(
            child: TextFormField(
              style: const TextStyle(color: primaryColor),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Post your comment",
                  hintStyle: TextStyle(color: darkGreyColor)),
            ),
          ),
          const Text(
            "Post",
            style: TextStyle(color: Colors.blue, fontSize: 15),
          )
        ],
      ),
    );
  }
}
