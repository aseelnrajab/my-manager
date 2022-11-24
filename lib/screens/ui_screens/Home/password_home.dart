import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Widget/custom_appBar.dart';
import '../../newData/new_password.dart';
import '../BodyWidget/account_passwords.dart';

class PasswordHome extends StatelessWidget {
  const PasswordHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Your Passwords!'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return NewPasswordScreen();
          }));
        },
        backgroundColor: const Color(0xff2F3260),
        child: const Icon(Icons.add),
      ),
      body:  Container(
        color: Color(0xfff3f0f1),
        padding: EdgeInsets.all(15.0),
        child: AccountPassword(),
      ),
    );
  }
}
