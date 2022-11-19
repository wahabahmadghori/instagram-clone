import 'package:flutter/material.dart';
import 'package:intagram_clone/features/presentation/pages/search/search_widget.dart';

import '../../../../const.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchWidget(controller: _searchController),
                sizeVer(10),
                GridView.builder(
                  itemCount: 32,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3),
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: secondaryColor,
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
