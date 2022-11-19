import 'package:flutter/material.dart';
import 'package:intagram_clone/const.dart';
import 'package:intagram_clone/features/presentation/pages/profile/widget/profile_form_widget.dart';

class UpdatePostPage extends StatelessWidget {
  const UpdatePostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: primaryColor)),
        title: const Text(
          "Edit Post",
          style: TextStyle(color: primaryColor),
        ),
        actions: const [
          Icon(
            Icons.done,
            color: Colors.blue,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: darkGreyColor,
                ),
              ),
            ),
            sizeVer(10),
            const Text(
              "UserName",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            sizeVer(10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(color: darkGreyColor),
            ),
            sizeVer(10),
            const ProfileFormWidget(
              title: "Descripton",
            ),
          ],
        ),
      ),
    );
  }
}
