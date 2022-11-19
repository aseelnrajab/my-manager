import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Widget/custom_appBar.dart';
import '../../providers/manager_provider.dart';

class NewIdCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar('Add An Id Card!'),
      body: Container(
        color: Color(0xfffaece9),
        height: double.infinity,
        child: Consumer<Manager>(builder: (context, provider, x) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.cardIdController,
                    decoration: InputDecoration(
                      label: Text('Your Card ID'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.nameController,
                    decoration: InputDecoration(
                      label: Text('Name'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.typeController,
                    decoration: InputDecoration(
                      label: Text('Type'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.creationDateController,
                    decoration: InputDecoration(
                      label: Text('Creation Date'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  controller: provider.validDateController,
                  decoration: InputDecoration(
                    label: Text('Valid Date'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await provider.insertNewID();
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffE07C5E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  child: const Text('Add New ID!'))
            ],
          );
        }),
      ),
    );
  }
}
