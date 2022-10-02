import 'package:flutter/material.dart';
import 'package:uwcforum/routes/routes.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.profilePage);
            },
            child: const Text("Go to Login"),
          ),
        ),
      ),
    );
  }
}
