import 'package:flutter/material.dart';
import 'package:intagram_clone/const.dart';
import 'package:intagram_clone/features/presentation/pages/profile/edit_profile_page.dart';

import 'features/presentation/pages/activity/activity_page.dart';
import 'features/presentation/pages/credential/sign_in_page.dart';
import 'features/presentation/pages/credential/sign_up_page.dart';
import 'features/presentation/pages/home/home_page.dart';
import 'features/presentation/pages/post/comment/comment_page.dart';
import 'features/presentation/pages/post/update_post_page.dart';
import 'features/presentation/pages/post/upload_post_page.dart';
import 'features/presentation/pages/profile/profile_page.dart';
import 'features/presentation/pages/search/search_page.dart';

class OnGeneratorRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case PageConst.editProfilePage:
        return routeBuilder(const EditProfilePage());
      case PageConst.profilePage:
        return routeBuilder(const ProfilePage());
      case PageConst.updatePostPage:
        return routeBuilder(const UpdatePostPage());
      case PageConst.uploadPostPage:
        return routeBuilder(const UploadPostPage());
      case PageConst.commentPage:
        return routeBuilder(const CommentPage());
      case PageConst.signInPage:
        return routeBuilder(const SignInPage());
      case PageConst.signUpPage:
        return routeBuilder(const SignUpPage());
      default:
        const PageNotFound();
    }
    return null;
  }

  static dynamic routeBuilder(Widget child) {
    return MaterialPageRoute(builder: (context) => child);
  }
}

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: const Center(
        child: Text('Page Not Found'),
      ),
    );
  }
}
