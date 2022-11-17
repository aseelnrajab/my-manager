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
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'login');
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff272A56),
              Color(0xff565B97)
            ]),
          ),
          child:
          const Text(
            'Password Manager App',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Aref Ruqaa'),
          ),

        )



    );
  }
}
