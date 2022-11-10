class Technician {
  String? userName;
  String? password;

  Technician(this.userName, this.password);

  Map<String, dynamic> toJson() {
    return {
      'username': userName,
      'password': password,
    };
  }
}
