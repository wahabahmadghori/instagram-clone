import 'package:flutter/material.dart';
import 'package:intagram_clone/const.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: secondaryColor.withOpacity(.3),
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: primaryColor),
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: secondaryColor, fontSize: 15)),
      ),
    );
  }
}
