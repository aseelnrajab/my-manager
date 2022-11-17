import 'dart:io';

import 'package:password_manager/models/password_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper1 {
  late Database database;
  static DbHelper1 dbHelper1 = DbHelper1();

  //password table details
  final String table1Name = 'password';
  final String id1Column = 'id';
  final String websiteColumn = 'websiteName';
  final String userName = 'username';
  final String passwordColumn = 'password';

  //paymentCard table details
  final String table2Name = 'paymentCard';
  final String id2Column = 'id';
  final String bankNameColumn = 'bankName';
  final String cardNoColumn = 'cardNumber';
  final String validDateColumn = 'validDate';
  final String cardTypeColumn = 'cardType';
  final String holderNameColumn = 'holderName';

  //notes table details
  final String table3Name = "notes";
  final String id3Column = 'id';
  final String titleColumnName = "title";
  final String contentColumnName = "content";
  final String dateColumn = 'dateOfAdd';

  //identities table details
  final String table4Name = 'identities';
  final String id4Column = 'id';
  final String cardIdColumn = 'cardId';
  final String typeColumn = 'cardType';
  final String cardValidDateColumn = 'validDate';
  final String name = 'name';
  final String cardCreationDateColumn = 'creationDate';

  initDatabase() async {
    database = await createDatabaseConnection();
  }

  Future<Database> createDatabaseConnection() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String folderPath = directory.path;
    return openDatabase('$folderPath/passwords.db', version: 1,
        onCreate: (db, version) {
      db.execute(
          'CREATE TABLE $table1Name ($id1Column INTEGER PRIMARY KEY AUTOINCREMENT, $websiteColumn TEXT, $userName TEXT , $passwordColumn TEXT )');
      'CREATE TABLE $table2Name ($id2Column INTEGER PRIMARY KEY AUTOINCREMENT, $bankNameColumn TEXT, $cardNoColumn TEXT ,$validDateColumn TEXT ,$cardTypeColumn TEXT, $holderNameColumn TEXT )';
      'CREATE TABLE $table3Name ($id3Column INTEGER PRIMARY KEY AUTOINCREMENT, $titleColumnName TEXT, $contentColumnName TEXT ,$dateColumn TEXT  )';
      'CREATE TABLE $table4Name ($id4Column INTEGER PRIMARY KEY AUTOINCREMENT, $cardIdColumn TEXT, $typeColumn TEXT ,$cardValidDateColumn TEXT ,$name TEXT, $cardCreationDateColumn TEXT )';
    });
  }

  Future<int> insertNewPassWord(PasswordModel passwordModel) async {
    int i = await database.insert(table1Name, passwordModel.toMap());
    return i;
  }

  Future<List<PasswordModel>> getAllPasswords() async {
    List<Map<String, dynamic>> data = await database.query(table1Name);
    return data.map((e) => PasswordModel.fromMap(e)).toList();
  }

  Future<List<PasswordModel>> getAllPaymentCard() async {
    List<Map<String, dynamic>> data = await database.query(table2Name);
    return data.map((e) => PasswordModel.fromMap(e)).toList();
  }

  Future<int> deletePassword(PasswordModel taskModel) async {
    int count = await database
        .delete(table1Name, where: 'id=?', whereArgs: [taskModel.id]);
    return count;
  }

  updatePassword(PasswordModel passwordModel) async {
    String newWebsiteValue = (passwordModel.websiteName!);
    String newPassValue = (passwordModel.password!);
    String newUserNameValue = (passwordModel.username!);
    database.update(
        table1Name,
        {
          websiteColumn: newWebsiteValue,
          userName: newUserNameValue,
          passwordColumn: newPassValue
        },
        where: 'id=?',
        whereArgs: [passwordModel.id]);
  }
}
