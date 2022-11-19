import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Widget/custom_appBar.dart';
import '../../newData/new_note.dart';
import '../BodyWidget/your_Notes.dart';

class NotesHome extends StatelessWidget {
  const NotesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar('Your Notes!'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NewNoteScreen();
            }));
          },
          backgroundColor: const Color(0xff2F3260),
          child: const Icon(Icons.add),
        ),
        body: Container(
          color: Color(0xfffaece9),
          padding: EdgeInsets.all(15.0),
          child: YourNotes(),
        ));
  }
}
