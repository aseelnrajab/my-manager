import 'package:flutter/material.dart';
import 'package:password_manager/providers/manager_provider.dart';
import 'package:provider/provider.dart';

import '../models/identity_model.dart';

class IdCardWidget extends StatelessWidget {
  IdentityModle identityModle;

  IdCardWidget(this.identityModle);

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
        const Icon(Icons.perm_identity, color: Color(0xff3874b0)),
        const SizedBox(
          width:100,
        ),
        Column(children: [
          Text(
            identityModle.name.toString(),
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
          Text(identityModle.cardId.toString()),
          const SizedBox(
            height: 5,
          ),
          Text(identityModle.type.toString()),
          const SizedBox(
            height: 5,
          ),
          Text(identityModle.validDate.toString()),
        ]),
        const SizedBox(
          width: 120,
        ),
        Column(
          children: [
            InkWell(
              child: const Icon(Icons.delete,color: Color(0xff3874b0)),
              onTap: () {
                Provider.of<Manager>(context, listen: false)
                    .deleteIdentity(identityModle);
              },
            ),
            const SizedBox(
              height: 2,
            ),
            // InkWell(
            //   child: const Icon(Icons.update),
            //   onTap: () {
            //     Provider.of<Manager>(context, listen: false)
            //         .updateIdentity(identityModle);
            //   },
            // ),
          ],
        )
      ]),
    );
  }
}
