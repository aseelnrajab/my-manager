import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Widget/payments_cards_widget.dart';
import '../../../providers/manager_provider.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Manager>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.allPaymentCards.length,
          itemBuilder: (context, index) {
            return PaymentCardsWidget(provider.allPaymentCards[index]);
          });
    });
  }
}
