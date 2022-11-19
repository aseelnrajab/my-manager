import 'package:flutter/material.dart';
import 'package:password_manager/providers/manager_provider.dart';
import 'package:password_manager/screens/Home.dart';
import 'package:password_manager/screens/launch_screen.dart';
import 'package:password_manager/screens/ui_screens/Home/id_home.dart';
import 'package:password_manager/screens/ui_screens/Home/notes_home.dart';
import 'package:password_manager/screens/ui_screens/Home/password_home.dart';
import 'package:password_manager/screens/ui_screens/BodyWidget/Id_cards.dart';
import 'package:password_manager/screens/ui_screens/BodyWidget/account_passwords.dart';
import 'package:password_manager/screens/ui_screens/BodyWidget/cards_payments.dart';
import 'package:password_manager/screens/ui_screens/BodyWidget/your_Notes.dart';
import 'package:password_manager/screens/ui_screens/Home/payment_home.dart';
import 'package:provider/provider.dart';
import 'data_respositry/db_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<Manager>(
        create: (context) {
          return Manager();
        },
        child: AppInit());
  }
}

class AppInit extends StatelessWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Home': (context) => MainHome(),
        // 'register': (context) => const AddAccount(),
        // 'login': (context) =>  AccountLogin(),
        '/account_passwords': (context) => const AccountPassword(),
        '/payment_cards': (context) => const PaymentCard(),
        '/id_cards': (context) => const IDCards(),
        '/notes': (context) => const YourNotes(),
        '/password_home': (context) => const PasswordHome(),
        '/notes_home': (context) => const NotesHome(),
        '/payment_cards_home': (context) => const PaymentHome(),
        '/id_cards_home': (context) => const IdCardHome(),
      },
      home: LaunchScreen(),
    );
  }
}
