import 'dart:async';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, 'Home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfff5927c), Color(0xfffacbbe)]),
            ),
            child: const Icon(
              Icons.manage_history,
              size: 50,
              color: const Color(0xff2F3260),
            )));
  }
}
