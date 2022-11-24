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
        color:const Color(0xfff3f0f1),
        height: double.infinity,
        child: Consumer<Manager>(builder: (context, provider, x) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.cardIdController,
                    decoration: InputDecoration(
                      label:const Text('Your Card ID'),
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
                  margin:const EdgeInsets.only(right: 20, left: 20),
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
                  margin:const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.typeController,
                    decoration: InputDecoration(
                      label:const Text('Type'),
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
                  margin:const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: provider.creationDateController,
                    decoration: InputDecoration(
                      label:const Text('Creation Date'),
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
                margin:const EdgeInsets.only(right: 20, left: 20),
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
              Container(
                height: 40,
                width: 200,
                child: ElevatedButton(
                    onPressed: () async {
                      await provider.insertNewID();
                        Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff3874b0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    child: const Text('Add New ID!', style: TextStyle(fontSize: 15),)),
              )
            ],
          );
        }),
      ),
    );
  }
}
