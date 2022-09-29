class UserAccount{
  final String id;
  final String email;
  final String token;

  UserAccount({
    required this.id,
    required this.email,
    required this.token,
  });

  static late UserAccount currentAccount;
}