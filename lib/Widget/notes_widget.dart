import 'package:flutter/material.dart';
import 'package:password_manager/models/notes_model.dart';
import 'package:password_manager/providers/manager_provider.dart';
import 'package:provider/provider.dart';

class NotesWidget extends StatelessWidget {
  NoteModel noteModel;

  NotesWidget(this.noteModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff2F3260)),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(children: [
        const Icon(
          Icons.note,
          color: Color(0xff3874b0),
        ),
        const SizedBox(
          width: 90,
        ),
        Column(children: [
          Text(
            noteModel.title.toString(),
            // textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w700,
              color: Color(0xff2F3260),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(noteModel.content.toString()),
          const SizedBox(
            height: 5,
          ),
          Text(noteModel.dateOfAdd.toString()),
        ]),
        const SizedBox(
          width: 150,
        ),
        Column(
          children: [
            InkWell(
              child: const Icon(
                Icons.delete,
                color: Color(0xff3874b0),
              ),
              onTap: () {
                Provider.of<Manager>(context, listen: false)
                    .deleteNote(noteModel);
              },
            ),
            const SizedBox(
              height: 2,
            ),
            // InkWell(
            //   child: const Icon(Icons.update),
            //   onTap: () {
            //     Provider.of<Manager>(context, listen: false)
            //         .updateNote(noteModel);
            //   },
            // ),
          ],
        )
      ]),
    );
  }
}
