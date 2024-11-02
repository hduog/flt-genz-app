class LoginPostModel {
  final String email;
  final String password;

  const LoginPostModel({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
