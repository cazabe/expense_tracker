import 'package:expense_tracker/domain/entities/user.dart';

class UserMapper {
  static User userJsonToEntity(Map<String, dynamic> json) => User(
      id: json['id'],
      status: json['status'],
      name: json['name'],
      username: json['username'],
      token: json['token']);
}
