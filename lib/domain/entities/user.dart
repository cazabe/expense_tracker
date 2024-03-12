class User {
  final int id;
  final String name;
  final String username;
  final String password;
  final String status;
  final String token;
  // final List<String> roles;

  User(
      {required this.id,
      required this.status,
      required this.name,
      required this.username,
      this.password = '',
      this.token = ''});
}

// bool get isAdmin{
//   return roles.contains('Admin')
// }
