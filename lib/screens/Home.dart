import 'package:flutter/material.dart';
import '../Widget/scaffold_appBar.dart';

class MainHome extends StatelessWidget {
  MainHome({Key? key}) : super(key: key);
  final List<String> bnLabels = [
    'Passwords',
    'Payment cards',
    'Notes',
    'ID cards'
  ];
  List<Icon> bnIcons = const [
    Icon(Icons.key_rounded),
    Icon(Icons.credit_card_sharp),
    Icon(Icons.note),
    Icon(Icons.perm_identity),
  ];
  List<String> path = [];
  static const Color backGroundcolor = Color(0xff2F3260);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar('Home'),
      body: Container(
        color: const Color(0xffE4F6FF),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: 10,
                      )),
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      width: double.infinity,
                      child: CircleAvatar(
                          backgroundColor: const Color(0xffE4F6FF),
                          radius: 150,
                          child: Image.asset('images/momen.png')),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 370,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 40,
                            crossAxisSpacing: 20,
                            childAspectRatio: 9 / 10),
                    itemBuilder: (context, index) {
                      return ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, path[index]);
                        },
                        label: Text(
                          '${bnLabels[index]}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                            color: backGroundcolor,
                          ),
                        ),
                        icon: Icon(bnIcons[index].icon,
                            size: 30, color: const Color(0xffB9683C)),
                        //label text
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
