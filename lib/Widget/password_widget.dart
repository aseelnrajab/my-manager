import 'package:flutter/material.dart';
import 'package:password_manager/providers/manager_provider.dart';
import 'package:provider/provider.dart';

import '../models/password_model.dart';

class PasswordWidget extends StatelessWidget {
  PasswordsModel passwordsModel;

  PasswordWidget(this.passwordsModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff2F3260)),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(children: [
        const Icon(Icons.key, color: Color(0xff3874b0)),
        const SizedBox(
          width: 80,
        ),
        Column(children: [
          Text(
            passwordsModel.websiteName.toString(),
            // textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w700,
              color: Color(0xff2F3260),
            ),
          ),

          Text(
            passwordsModel.username.toString(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            passwordsModel.password.toString(),
          ),
        ]),
       const SizedBox(width: 99,),
        Column(
          children: [
            InkWell(
              child: const Icon(Icons.delete,color: Color(0xff3874b0)),
              onTap: () {
                Provider.of<Manager>(context, listen: false)
                    .deletePassword(passwordsModel);
              },
            ),
            const SizedBox(
              height: 2,
            ),
            // InkWell(
            //   child: const Icon(Icons.update),
            //   onTap: () {
            //     Provider.of<Manager>(context, listen: false)
            //         .updatePassword(passwordsModel);
            //   },
            // ),
          ],
        )
      ]),
    );

  }
}
