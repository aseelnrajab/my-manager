import 'package:flutter/material.dart';

import '../Widget/scaffold_appBar.dart';

class AddAccount extends StatelessWidget {
  const AddAccount({Key? key}) : super(key: key);
  static const Color backGroundcolor = Color(0xffB9683C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SAppBar('Password Manager Pro'),
        body: Container(
          height: double.infinity,
          color: const Color(0xffE4F6FF),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    'images/lock-removebg-preview.png',
                    width: 500,
                  ),
                ),
                const Text(
                  'CREATE NEW ACCOUNT',
                  style: TextStyle(
                      color: backGroundcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
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
                SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(width: 1, color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.all(40),
                    width: 220,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('register');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffE07C5E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      child: const Text('CREATE'),
                    ))
              ],
            ),
          ),
        ));
  }
}
