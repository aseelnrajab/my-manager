import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/screens/ui_screens/BodyWidget/cards_payments.dart';

import '../../../Widget/custom_appBar.dart';
import '../../newData/new_payment_card.dart';

class PaymentHome extends StatelessWidget {
  const PaymentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar('Your PaymentCards!'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NewPaymentCardScreen();
            }));
          },
          backgroundColor: const Color(0xff2F3260),
          child: const Icon(Icons.add),
        ),
        body: Container(
          color:const Color(0xfff3f0f1),
          padding:const EdgeInsets.all(15.0),
          child: const PaymentCard(),
        ));
  }
}
