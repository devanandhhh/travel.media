class SignUpModel {
  final String userName;
  final String email;
  final String phoneNumber;
  final String password;
  final String confirmPassword;
  SignUpModel(
      {required this.userName,
      required this.email,
      required this.phoneNumber,
      required this.password,
      required this.confirmPassword});
  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
        userName: json["username"],
        email: json["email"],
        phoneNumber: json["phone"],
        password: json["password"],
        confirmPassword: json["confirmPassword"]);
  }
}
