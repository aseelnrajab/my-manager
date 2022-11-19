import 'dart:io';

import 'package:password_manager/models/notes_model.dart';
import 'package:password_manager/models/password_model.dart';
import 'package:password_manager/models/payment_card_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

import '../models/identity_model.dart';

class DbHelper {
  late Database database;
  static DbHelper dbHelper = DbHelper();

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
  final String csv = 'csv';

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
      db.execute(
          'CREATE TABLE $table2Name ($id2Column INTEGER PRIMARY KEY AUTOINCREMENT, $bankNameColumn TEXT, $cardNoColumn TEXT ,$validDateColumn TEXT ,$cardTypeColumn TEXT, $holderNameColumn TEXT, $csv TEXT )');
      db.execute(
          'CREATE TABLE $table3Name ($id3Column INTEGER PRIMARY KEY AUTOINCREMENT, $titleColumnName TEXT, $contentColumnName TEXT ,$dateColumn TEXT  )');
      db.execute(
          'CREATE TABLE $table4Name ($id4Column INTEGER PRIMARY KEY AUTOINCREMENT, $cardIdColumn TEXT, $typeColumn TEXT ,$cardValidDateColumn TEXT ,$name TEXT, $cardCreationDateColumn TEXT )');
    });
  }

  Future<int> insertNewPassWord(PasswordsModel passwordModel) async {
    int i = await database.insert(table1Name, passwordModel.toMap());
    return i;
  }

  Future<List<PasswordsModel>> getAllPasswords() async {
    List<Map<String, dynamic>> data = await database.query(table1Name);
    return data.map((e) => PasswordsModel.fromMap(e)).toList();
  }

  Future<int> deletePassword(PasswordsModel taskModel) async {
    int count = await database
        .delete(table1Name, where: 'id=?', whereArgs: [taskModel.id]);
    return count;
  }

  ////////////////////
  Future<List<PaymentCardModel>> getAllPaymentCard() async {
    List<Map<String, dynamic>> data = await database.query(table2Name);
    return data.map((e) => PaymentCardModel.fromMap(e)).toList();
  }

  Future<int> insertNewPaymentCard(PaymentCardModel paymentCardModel) async {
    int i = await database.insert(table2Name, paymentCardModel.toMap());
    return i;
  }

  Future<int> deletePaymentCard(PaymentCardModel paymentCardModel) async {
    int count = await database
        .delete(table2Name, where: 'id=?', whereArgs: [paymentCardModel.id]);
    return count;
  }

////////////////////

  Future<List<NoteModel>> getAllNotes() async {
    List<Map<String, dynamic>> data = await database.query(table3Name);
    return data.map((e) => NoteModel.fromMap(e)).toList();
  }

  Future<int> insertNewNote(NoteModel noteModel) async {
    int i = await database.insert(table3Name, noteModel.toMap());
    return i;
  }

  Future<int> deleteNote(NoteModel noteModel) async {
    int count = await database
        .delete(table3Name, where: 'id=?', whereArgs: [noteModel.id]);
    return count;
  }

////////////////

  Future<List<IdentityModle>> getAllIdentities() async {
    List<Map<String, dynamic>> data = await database.query(table4Name);
    return data.map((e) => IdentityModle.fromMap(e)).toList();
  }

  Future<int> insertNewIdentity(IdentityModle identityModle) async {
    int i = await database.insert(table4Name, identityModle.toMap());
    return i;
  }

  Future<int> deleteIdentity(IdentityModle identityModle) async {
    int count = await database
        .delete(table4Name, where: 'id=?', whereArgs: [identityModle.id]);
    return count;
  }

// updatePassword(PasswordsModel passwordModel) async {
//   String newWebsiteValue = (passwordModel.websiteName!);
//   String newPassValue = (passwordModel.password!);
//   String newUserNameValue = (passwordModel.username!);
//   database.update(
//       table1Name,
//       {
//         websiteColumn: newWebsiteValue,
//         userName: newUserNameValue,
//         passwordColumn: newPassValue
//       },
//       where: 'id=?',
//       whereArgs: [passwordModel.id]);
// }
}
