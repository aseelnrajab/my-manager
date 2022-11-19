import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/Widget/notes_widget.dart';
import 'package:provider/provider.dart';

import '../../../providers/manager_provider.dart';

class YourNotes extends StatelessWidget {
  const YourNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Manager>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.allNotes.length,
          itemBuilder: (context, index) {
            return NotesWidget(provider.allNotes[index]);
          });
    });
  }
}
