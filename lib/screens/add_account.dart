// import 'package:flutter/material.dart';
//
// import '../Widget/custom_appBar.dart';
//
// class AddAccount extends StatelessWidget {
//   const AddAccount({Key? key}) : super(key: key);
//   static const Color backGroundcolor = Color(0xff525555);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: InkWell(
//               onTap: () {
//                 Navigator.of(context).pushReplacementNamed('login');
//
//               },
//               child: const Icon(Icons.arrow_back, color: Color(0xff525555))),
//           centerTitle: true,
//           title: const Text('REGISTER',
//               style: TextStyle(color: Color(0xff525555))),
//           backgroundColor: const Color(0xfffaece9),
//           elevation: 0,
//         ),
//         body: Container(
//           height: double.infinity,
//           color: const Color(0xfffaece9),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'images/lock-removebg-preview.png',
//                     width: 500,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'CREATE NEW ACCOUNT',
//                   style: TextStyle(
//                       color: Color(0xffB9683C),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                 ),
//                 const SizedBox(
//                   height: 90,
//                 ),
//                 SizedBox(
//                   width: 350,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Username',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide:
//                               const BorderSide(width: 1, color: Colors.black)),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   width: 350,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide:
//                               const BorderSide(width: 1, color: Colors.black)),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacementNamed('login');
//                     // Navigator.pop(context);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: const Color(0xffE07C5E),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0)),
//                     minimumSize: Size(120, 30),
//                   ),
//                   child: const Text(
//                     'CREATE',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
