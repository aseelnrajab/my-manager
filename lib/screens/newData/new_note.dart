import 'package:flutter/material.dart';
import 'package:password_manager/Widget/custom_appBar.dart';
import 'package:provider/provider.dart';

import '../../providers/manager_provider.dart';

class NewNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: CustomAppBar('Add A Note'),
        body: Container(
          color: const Color(0xfff3f0f1),
          child: Consumer<Manager>(builder: (context, provider, x) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.titleController,
                    decoration: InputDecoration(
                      label: const Text('Title of Note'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.contentController,
                    decoration: InputDecoration(
                        label: const Text('Content'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.dateOfAddController,
                    decoration: InputDecoration(
                      label: const Text('Date'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () async {
                          await provider.insertNewNote();
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff3874b0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                        child: const Text('Add New Note!')))
              ],
            );
          }),
        ));
  }
}
