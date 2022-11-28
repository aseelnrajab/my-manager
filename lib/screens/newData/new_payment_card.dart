import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Widget/custom_appBar.dart';
import '../../providers/manager_provider.dart';

class NewPaymentCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar('Add Payment Card Screen'),
      body: Container(
        color: const Color(0xfff3f0f1),
        child: Consumer<Manager>(builder: (context, provider, x) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Bank Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.bankNameController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Card Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.cardNumController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name On Card',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.holderNameController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Card Type',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                  controller: provider.cardTypeController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  controller: provider.dateController,
                  decoration: InputDecoration(
                    labelText: 'Valid until',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  controller: provider.csvController,
                  decoration: InputDecoration(
                    labelText: 'CSV',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 35,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () async {
                        await provider.insertNewPaymentCard();
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff3874b0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      child: const Text('Add New Payment Card!')))
            ],
          );
        }),
      ),
    );
  }
}
