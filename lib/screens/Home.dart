import 'package:flutter/material.dart';
import '../Widget/custom_appBar.dart';

class MainHome extends StatelessWidget {
  MainHome({Key? key}) : super(key: key);
  final List<String> bnLabels = [
    'Passwords',
    'Payment cards',
    'Notes',
    'ID cards'
  ];
  List<Icon> bnIcons = const [
    Icon(Icons.vpn_key_rounded),
    Icon(Icons.credit_card),
    Icon(Icons.note),
    Icon(Icons.perm_identity_rounded),
  ];
  List<String> path = [
    '/password_home',
    '/payment_cards_home',
    '/notes_home',
    '/id_cards_home',
  ];
  static const Color backGroundcolor = Color(0xff3874b0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            'Home',
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('login');
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Container(
            color: const Color(0xfff3f0f1),
            height: double.infinity,
            child: SingleChildScrollView(
                child: Column(children: [
              Stack(children: [
                Container(
                  height: 480,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff647d8b), Color(0xff335263)]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 160.0, left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Store Your',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 40),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Passwords, Notes, Cards',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'All In One Place',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 5,
                                fontWeight: FontWeight.w300,
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 420.0, left: 30),
                  child: Container(
                    height: 90,
                    width: 370,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: const Color(0xffc59b77),
                        primary: const Color(0xffc59b77),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0)),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 23.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Your Password ',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 18),
                                ),
                                Text(
                                  'Manager',
                                  style:
                                      TextStyle(letterSpacing: 2, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  color: const Color(0xfff3f0f1),
                  width: double.infinity,
                  height: 300,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 40,
                              crossAxisSpacing: 20,
                              childAspectRatio: 9 / 10),
                      itemBuilder: (context, index) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            primary: const Color(0xfff3f0f1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19.0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, path[index]);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(bnIcons[index].icon,
                                  size: 30, color: const Color(0xffc09d81)),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${bnLabels[index]}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff836c5b),
                                ),
                                //label text
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              )
            ]))));
  }
}
