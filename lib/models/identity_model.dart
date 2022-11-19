class IdentityModle {
  int? id;
  String? cardId;
  String? type;
  String? validDate;
  String? name;
  String? creationDate;

  IdentityModle(
      {this.id,
      this.cardId,
      this.type,
      this.validDate,
      this.name,
      this.creationDate});

  Map<String, dynamic> toMap() {
    return {
      'cardId': cardId,
      'cardType': type,
      'validDate': validDate,
      'name': name,
      'creationDate': creationDate
    };
  }

  factory IdentityModle.fromMap(Map<String, dynamic> map) {
    return IdentityModle(
        id: map['id']?.toInt(),
        cardId: map['cardId'],
        type: map['type'],
        validDate: map['validDate'],
        name: map['name'],
        creationDate: map['creationDate']);
  }
}
