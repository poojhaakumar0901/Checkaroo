class UserModel {
  UserModel({required this.email, required this.password, this.id});

  factory UserModel.fromMap(final Map<String, dynamic> map) =>
      UserModel(id: map["id"], email: map["email"], password: map["password"]);
  final int? id;
  final String email;
  final String password;

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "email": email,
    "password": password,
  };
}
