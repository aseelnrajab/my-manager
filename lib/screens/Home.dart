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
            style: TextStyle(color: Color(0xff323662)),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: (){
              Navigator.of(context).pushReplacementNamed('login');
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff323662),
            ),
          ),
        ),
        body: Container(
            color: const Color(0xfffaece9),
            height: double.infinity,
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                height: 480,
                width: double.infinity,
                decoration: const BoxDecoration(

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                     ),
                  image: DecorationImage(
                      image: AssetImage('images/background.png'),
                      fit: BoxFit.fitWidth),
                ),
              ),
              Container(
                color: const Color(0xfffaece9),
                width: double.infinity,
                height: 350,
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
                          primary: Colors.white,
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
                                size: 30, color: const Color(0xff3874b0)),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              '${bnLabels[index]}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                                color: backGroundcolor,
                              ),
                              //label text
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ]))));
  }
}
