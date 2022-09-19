class NewUserAccount{
  final int id;
  final String name;
  final String email;
  final String token;

  NewUserAccount({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
  });

  static late NewUserAccount currentAccount;
}