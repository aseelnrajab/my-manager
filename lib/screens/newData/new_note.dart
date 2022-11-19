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
          color: const Color(0xfffaece9),
          child: Consumer<Manager>(builder: (context, provider, x) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.titleController,
                    decoration: InputDecoration(
                      label: Text('Title of Note'),
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
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.contentController,
                    decoration: InputDecoration(
                        label: Text('Content'),
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
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.dateOfAddController,
                    decoration: InputDecoration(
                      label: Text('Date'),
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
                ElevatedButton(
                    onPressed: () async {
                      await provider.insertNewNote();
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffE07C5E),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    child: const Text('Add New Note!'))
              ],
            );
          }),
        ));
  }
}
