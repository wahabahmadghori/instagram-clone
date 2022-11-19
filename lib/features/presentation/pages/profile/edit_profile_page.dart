import 'package:flutter/material.dart';
import 'package:intagram_clone/const.dart';
import 'package:intagram_clone/features/presentation/pages/profile/widget/profile_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.close,
            size: 32,
          ),
        ),
        title: const Text("Edit Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: const Icon(
                Icons.done,
                size: 32,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            sizeVer(15),
            const Center(
              child: Text(
                'Change profile photo',
                style: TextStyle(
                    color: blueColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            sizeVer(15),
            const ProfileFormWidget(
              title: "Name",
            ),
            sizeVer(15),
            const ProfileFormWidget(
              title: "UserName",
            ),
            sizeVer(15),
            const ProfileFormWidget(
              title: "Website",
            ),
            sizeVer(15),
            const ProfileFormWidget(
              title: "Bio",
            ),
          ]),
        ),
      ),
    );
  }
}
