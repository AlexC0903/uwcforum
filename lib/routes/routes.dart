import 'package:flutter/material.dart';

import 'package:uwcforum/pages/homepage.dart';
import 'package:uwcforum/pages/loginpage.dart';
import 'package:uwcforum/pages/forumpage.dart';
import 'package:uwcforum/pages/newspage.dart';
import 'package:uwcforum/pages/profilepage.dart';

class RouteManager {
  static const String homePage = '/';
  static const String loginPage = '/login';
  static const String newsPage = '/news';
  static const String profilePage = '/profile';
  static const String forumPage = '/forum';
  List<String> routesList = [
    homePage,
    loginPage,
    newsPage,
    profilePage,
    forumPage
  ];

  static Route<dynamic> generateRoute(var settings) {
    switch ((settings != String) ? settings.name : settings) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );

      case loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );

      case newsPage:
        return MaterialPageRoute(
          builder: (context) => NewsPage(),
        );

      case profilePage:
        return MaterialPageRoute(
          builder: (context) => ProfilePage(),
        );

      case forumPage:
        return MaterialPageRoute(
          builder: (context) => ForumPage(),
        );

      default:
        throw const FormatException("Route not found");
    }
  }
}
