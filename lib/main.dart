import 'package:flutter/material.dart';
import 'package:password_manager/screens/Home.dart';
import 'package:password_manager/screens/Login_screen.dart';
import 'package:password_manager/screens/add_account.dart';
import 'package:password_manager/screens/launch_screen.dart';
import 'data_respositry/db_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper1.dbHelper1.initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Home': (context) => MainHome(),
        'register': (context) => const AddAccount(),
        'login': (context) => const AccountLogin(),
      },
      home: const LaunchScreen(),
    );
  }
}
