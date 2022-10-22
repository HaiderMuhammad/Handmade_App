class UserAccount{
  final String email;
  final String token;

  UserAccount({
    required this.email,
    required this.token,
  });

  static late UserAccount currentAccount;
}