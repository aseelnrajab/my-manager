import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/Widget/password_widget.dart';
import 'package:password_manager/providers/manager_provider.dart';
import 'package:provider/provider.dart';

class AccountPassword extends StatelessWidget {
  const AccountPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Manager>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.allPassword.length,
          itemBuilder: (context, index) {
            return PasswordWidget(provider.allPassword[index]);
          });
    });
  }
}
