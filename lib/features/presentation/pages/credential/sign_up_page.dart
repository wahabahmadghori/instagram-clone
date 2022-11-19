import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intagram_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:intagram_clone/features/presentation/widgets/form_container_widget.dart';

import '../../../../const.dart';
import '../credential/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/ic_instagram.svg',
                  color: primaryColor,
                ),
              ),
              sizeVer(15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage('assets/profile_default.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -15,
                      right: -10,
                      child: IconButton(
                        splashRadius: 3,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: blueColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              sizeVer(30),
              const FormContainerWidget(
                hintText: "UserName",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Email",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Bio",
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: "Sign Up",
                onTapListener: () {},
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              const Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, PageConst.signInPage, (route) => false);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
