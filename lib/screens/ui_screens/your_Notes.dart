import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/Widget/scaffold_appBar.dart';

class YourNotes extends StatelessWidget {
  const YourNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar('Notes'),
      body: Column(),
    );
  }
}
