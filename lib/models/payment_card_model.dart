class PaymentCardModel {
  int? id;
  String? bankName;
  String? cardNumber;
  String? validDate;
  String? cardType;
  String? csv;
  String? holderName;

  PaymentCardModel(
      {this.id,
      this.bankName,
      this.cardNumber,
      this.validDate,
      this.csv,
      this.cardType,
      this.holderName});

  Map<String, dynamic> toMap() {
    return {
      'bankName': bankName,
      'cardNumber': cardNumber,
      'validDate': validDate,
      'csv': csv,
      'cardType': cardType,
      'holderName': holderName,
    };
  }

  factory PaymentCardModel.fromMap(Map<String, dynamic> map) {
    return PaymentCardModel(
        id: map['id']?.toInt(),
        bankName: map['bankName'],
        cardNumber: map['cardNumber'],
        validDate: map['validDate'],
        csv: map['csv'],
        cardType: map['cardType'],
        holderName: map['holderName']);
  }
}
