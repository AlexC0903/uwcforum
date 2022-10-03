import 'package:flutter/material.dart';
import 'package:uwcforum/Pages/homepage.dart';
import 'package:uwcforum/Pages/profilepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children: const [HomePage(), ProfilePage()],
      ),
    );
  }
}
