import 'package:flutter/material.dart';
import 'package:password_manager/providers/manager_provider.dart';
import 'package:provider/provider.dart';

import '../models/payment_card_model.dart';

class PaymentCardsWidget extends StatelessWidget {
  PaymentCardModel paymentCardModel;

  PaymentCardsWidget(this.paymentCardModel);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff2F3260)),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Row(children: [
          const Icon(Icons.payment, color: Color(0xff3874b0)),
          const SizedBox(
            width: 90,
          ),
           Column(children: [
              Text(
                paymentCardModel.cardNumber.toString(),
                // textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2F3260),
                ),
              ),
              Text(paymentCardModel.holderName.toString()),
              const SizedBox(
                height: 5,
              ),
              Text(
                paymentCardModel.bankName.toString(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                paymentCardModel.cardType.toString(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                paymentCardModel.validDate.toString(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                paymentCardModel.csv.toString(),
              ),
            ]),

          const SizedBox(
            width: 150,
          ),
          Column(
            children: [
              InkWell(
                child: const Icon(
                  Icons.delete,
                  color: Color(0xff3874b0),
                ),
                onTap: () {
                  Provider.of<Manager>(context, listen: false)
                      .deletePaymentCard(paymentCardModel);
                },
              ),
              const SizedBox(
                height: 2,
              ),
              // InkWell(
              //   child: const Icon(Icons.update),
              //   onTap: () {
              //     Provider.of<Manager>(context, listen: false)
              //         .updatePaymentCard(paymentCardModel);
              //   },
              // ),
            ],
          )
        ]));
  }
}
