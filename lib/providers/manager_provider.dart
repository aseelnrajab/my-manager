import 'package:flutter/cupertino.dart';
import 'package:password_manager/data_respositry/db_helper.dart';

import '../models/identity_model.dart';
import '../models/notes_model.dart';
import '../models/password_model.dart';
import '../models/payment_card_model.dart';

class Manager extends ChangeNotifier {
  Manager() {
    getAllPasswords();
    getAllNotes();
    getAllIdentities();
    getAllIPaymentCards();
  }

//password controllers
  TextEditingController websiteNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //notes controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController dateOfAddController = TextEditingController();

  //id cards controllers
  TextEditingController cardIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController creationDateController = TextEditingController();
  TextEditingController validDateController = TextEditingController();

  //Payment Card controllers
  TextEditingController bankNameController = TextEditingController();
  TextEditingController holderNameController = TextEditingController();
  TextEditingController cardTypeController = TextEditingController();
  TextEditingController cardNumController = TextEditingController();
  TextEditingController csvController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<PasswordsModel> allPassword = [];
  List<NoteModel> allNotes = [];
  List<IdentityModle> allIdentities = [];
  List<PaymentCardModel> allPaymentCards = [];

  getAllPasswords() async {
    allPassword = await DbHelper.dbHelper.getAllPasswords();
    notifyListeners();
  }

  getAllNotes() async {
    allNotes = await DbHelper.dbHelper.getAllNotes();
    notifyListeners();
  }

  getAllIdentities() async {
    allIdentities = await DbHelper.dbHelper.getAllIdentities();
    notifyListeners();
  }

  getAllIPaymentCards() async {
    allPaymentCards = await DbHelper.dbHelper.getAllPaymentCard();
    notifyListeners();
  }

  deletePassword(PasswordsModel passwordsModel) async {
    await DbHelper.dbHelper.deletePassword(passwordsModel);
    getAllPasswords();
  }

  deleteNote(NoteModel noteModel) async {
    await DbHelper.dbHelper.deleteNote(noteModel);
    getAllNotes();
  }

  deleteIdentity(IdentityModle identityModle) async {
    await DbHelper.dbHelper.deleteIdentity(identityModle);
    getAllIdentities();
  }

  deletePaymentCard(PaymentCardModel paymentCardModel) async {
    await DbHelper.dbHelper.deletePaymentCard(paymentCardModel);
    getAllIPaymentCards();
  }

  // updatePassword(PasswordsModel passwordsModel) async {
  //   await DbHelper.dbHelper.updatePassword(passwordsModel);
  //   getAllPasswords();
  // }
  //
  // updateNote(NoteModel noteModel) async {
  //   await DbHelper.dbHelper.updateNote(noteModel);
  //   getAllNotes();
  // }
  //
  // updateIdentity(IdentityModle identityModle) async {
  //   await DbHelper.dbHelper.updateIdentity(identityModle);
  //   getAllIdentities();
  // }
  //
  // updatePaymentCard(PaymentCardModel paymentCardModel) async {
  //   await DbHelper.dbHelper.updatePayment(paymentCardModel);
  //   getAllIPaymentCards();
  // }

  insertNewPassword() async {
    PasswordsModel passwordsModel = PasswordsModel(
        websiteName: websiteNameController.text,
        username: userNameController.text,
        password: passwordController.text);
    websiteNameController.clear();
    userNameController.clear();
    passwordController.clear();
    await DbHelper.dbHelper.insertNewPassWord(passwordsModel);
    getAllPasswords();
  }

  insertNewNote() async {
    NoteModel noteModel = NoteModel(
        title: titleController.text,
        content: contentController.text,
        dateOfAdd: dateOfAddController.text);
    titleController.clear();
    contentController.clear();
    dateOfAddController.clear();
    await DbHelper.dbHelper.insertNewNote(noteModel);
    getAllNotes();
  }

  insertNewID() async {
    IdentityModle identityModle = IdentityModle(
        cardId: cardIdController.text,
        type: typeController.text,
        validDate: validDateController.text,
        name: nameController.text,
        creationDate: creationDateController.text);
    cardIdController.clear();
    typeController.clear();
    validDateController.clear();
    nameController.clear();
    creationDateController.clear();
    await DbHelper.dbHelper.insertNewIdentity(identityModle);
    getAllIdentities();
  }

  insertNewPaymentCard() async {
    PaymentCardModel paymentCardModel = PaymentCardModel(
        cardNumber: cardNumController.text,
        cardType: cardTypeController.text,
        validDate: dateController.text,
        bankName: bankNameController.text,
        holderName: holderNameController.text,
        csv: csvController.text);
    cardNumController.clear();
    cardTypeController.clear();
    dateController.clear();
    bankNameController.clear();
    holderNameController.clear();
    csvController.clear();
    await DbHelper.dbHelper.insertNewPaymentCard(paymentCardModel);
    getAllIPaymentCards();
  }
}
