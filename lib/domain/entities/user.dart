class User {
  final String name;
  final String username;
  final String password;
  final int id;
  final String status;

  User(
      {required this.id,
      required this.status,
      required this.name,
      required this.username,
      this.password = ''});
}
