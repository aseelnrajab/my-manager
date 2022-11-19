import 'package:flutter/material.dart';
import 'package:password_manager/Widget/id_cards_widget.dart';
import 'package:provider/provider.dart';

import '../../../providers/manager_provider.dart';

class IDCards extends StatelessWidget {
  const IDCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Manager>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.allIdentities.length,
          itemBuilder: (context, index) {
            return IdCardWidget(provider.allIdentities[index]);
          });
    });
  }
}
