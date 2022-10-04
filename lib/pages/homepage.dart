import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uwcforum/Pages/profilepage.dart';
import 'package:uwcforum/pages/forumpage.dart';
import 'package:uwcforum/pages/loginpage.dart';
import 'package:uwcforum/pages/newspage.dart';
import 'package:uwcforum/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: _navigatorKey,
        initialRoute: RouteManager.homePage,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case RouteManager.homePage:
              return MaterialPageRoute(
                builder: (context) => const HomePage(),
              );

            case RouteManager.loginPage:
              return MaterialPageRoute(
                builder: (context) => const LoginPage(),
              );

            case RouteManager.newsPage:
              return MaterialPageRoute(
                builder: (context) => const NewsPage(),
              );

            case RouteManager.profilePage:
              return MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              );

            case RouteManager.forumPage:
              return MaterialPageRoute(
                builder: (context) => const ForumPage(),
              );

            default:
              throw const FormatException("Route not found");
          }
        },
      ),
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 250),
        onTap: (value) {
          _navigatorKey.currentState
              ?.pushNamed(RouteManager().routesList[value]);
        },
        items: const [
          Icon(Icons.person),
          Icon(Icons.pages),
          Icon(Icons.settings)
        ],
      ),
    );
  }
}
