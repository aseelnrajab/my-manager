import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  late String text;

  SAppBar(this.text);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text, style: const TextStyle(color: Color(0xff2F3260))),
      backgroundColor: const Color(0xffE4F6FF),
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
