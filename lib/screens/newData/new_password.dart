import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Widget/custom_appBar.dart';
import '../../providers/manager_provider.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar('Add Password Screen'),
      body: Container(
        color: const Color(0xfff3f0f1),
        child: Consumer<Manager>(builder: (context, provider, x) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Website Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.websiteNameController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.userNameController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.passwordController,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  height: 50,
                  width: 280,
                  child: ElevatedButton(
                      onPressed: () async {
                        await provider.insertNewPassword();
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff3874b0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      child: const Text('Add New Password For Your Account!')))
            ],
          );
        }),
      ),
    );
  }
}
