class Account{
  final int id;
  final String name;
  final String email;
  final String token;

  Account({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
  });

  static late Account currentAccount;
}