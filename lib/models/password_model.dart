class PasswordsModel {
  int? id;
  String? websiteName;
  String? username;
  String? password;

  PasswordsModel({this.id, this.websiteName, this.username, this.password});

  Map<String, dynamic> toMap() {
    return {
      'websiteName': websiteName,
      'username': username,
      'password': password,
    };
  }

  factory PasswordsModel.fromMap(Map<String, dynamic> map) {
    return PasswordsModel(
        id: map['id']?.toInt(),
        websiteName: map['websiteName'],
        username: map['username'],
        password: map['password']);
  }
}
