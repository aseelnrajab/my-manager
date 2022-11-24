import 'package:flutter/material.dart';
import '../../../Widget/custom_appBar.dart';
import '../../newData/new_id_card.dart';
import '../BodyWidget/Id_cards.dart';

class IdCardHome extends StatelessWidget {
  const IdCardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar('Your Id Card!'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NewIdCardScreen();
            }));
          },
          backgroundColor: const Color(0xff2F3260),
          child: const Icon(Icons.add),
        ),
        body: Container(
          color: Color(0xfff3f0f1),
          padding: EdgeInsets.all(15.0),
          child: const IDCards(),
        ));
  }
}
