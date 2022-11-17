class PasswordModel {
  int? id;
  String? websiteName;
  String? username;
  String? password;

  PasswordModel({this.id, this.websiteName, this.username, this.password});

  Map<String, dynamic> toMap() {
    return {
      'WebsiteName': websiteName,
      'Username': username,
      'Password': password,
    };
  }

  factory PasswordModel.fromMap(Map<String, dynamic> map) {
    return PasswordModel(
        id: map['id']?.toInt(),
        websiteName: map['WebsiteName'],
        username: map['Username'],
        password: map['Password']);
  }
}
