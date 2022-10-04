import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uwcforum/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 250),
        onTap: (value) {
          Navigator.push(
            context,
            RouteManager.generateRoute(RouteManager().routesList[value]),
          );
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
