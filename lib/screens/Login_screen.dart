// import 'package:flutter/material.dart';
// import '../Widget/custom_appBar.dart';
// import '../data_respositry/snack_Bar_helper.dart';
//
// class AccountLogin extends StatefulWidget {
//   AccountLogin({Key? key}) : super(key: key);
//   static const Color backGroundcolor = Color(0xffB9683C);
//
//   @override
//   State<AccountLogin> createState() => _AccountLoginState();
// }
//
// class _AccountLoginState extends State<AccountLogin> with Helper {
//   TextEditingController emailController = TextEditingController();
//
//   TextEditingController passwordController = TextEditingController();
//
//   String? _passwordError;
//
//   String? _emailError;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('LOGIN',
//             style: const TextStyle(color: Color(0xff525555))),
//         backgroundColor: const Color(0xfffaece9),
//         elevation: 0,
//       ),
//       body: Container(
//         height: double.infinity,
//         color: const Color(0xfffaece9),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 30,
//               ),
//               Center(
//                 child: Image.asset(
//                   'images/lock-removebg-preview.png',
//                   width: 500,
//                 ),
//               ),
//               const Text(
//                 'LOGIN TO YOUR ACCOUNT',
//                 style: TextStyle(
//                     color: AccountLogin.backGroundcolor,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20),
//               ),
//               const SizedBox(
//                 height: 70,
//               ),
//               SizedBox(
//                 width: 350,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             const BorderSide(width: 1, color: Colors.black)),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 width: 350,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide:
//                             const BorderSide(width: 1, color: Colors.black)),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushReplacementNamed('Home');
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: const Color(0xffE07C5E),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0)),
//                       minimumSize: Size(120, 35),
//                     ),
//                     child: const Text('SignIn'),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushReplacementNamed('register');
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: const Color(0xffE07C5E),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0)),
//                       minimumSize: Size(120, 35),
//                     ),
//                     child: const Text('SignUp'),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   bool checkData() {
//     //data مش فاضيه
//     if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
//       controlError();
//       return true;
//     } else {
//       controlError();
//       return false;
//     }
//   }
//
//   void controlError() {
//     setState(() {
//       _emailError = emailController.text.isEmpty ? 'ادخل الاسم' : null;
//       _passwordError =
//           passwordController.text.isEmpty ? 'ادخل كلمة المرور' : null;
//     });
//   }
//
//   //بظهر رساله انه في خطأ
//   void showSnackBarMessage() {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: const Text('خطأ في المعلومات المُدخلة'),
//         backgroundColor: Colors.red,
//         duration: const Duration(seconds: 3),
//         onVisible: () => print('Visible'),
//         //to know that the error showed
//         behavior: SnackBarBehavior.floating,
//         margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         action: SnackBarAction(
//             label: 'تخطي', textColor: Colors.white, onPressed: () {})));
//   }
//
//   //يتحقق من الباسورد انه طوله اكبر من ٦
//   bool checkPassword() {
//     if (passwordController.text.length >= 6) {
//       return true;
//     } else if (!(passwordController.text.length >= 6)) {
//       showsnakbar(
//         Context: context,
//         massage: 'كلمة المرور يجب ان تكون اكبر من او تساوي ست حروف او ارقام'
//             '',
//         error: true,
//       );
//       return false;
//     }
//     return false;
//   }
//
//   void clear() {
//     emailController.text = '';
//     passwordController.text = '';
//   }
// }
