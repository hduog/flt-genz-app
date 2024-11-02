class RegistrationPost {
  String email;
  String password;
  String fullName;

  RegistrationPost(this.email, this.password, this.fullName);

  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password, 'fullName': fullName};
  }
}
