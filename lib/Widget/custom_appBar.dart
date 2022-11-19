import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  late String text;

  CustomAppBar(this.text);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: Color(0xff525555))),
      title: Text(text, style: const TextStyle(color: Color(0xff525555))),
      backgroundColor: const Color(0xfffaece9),
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
