import 'package:expense_tracker/domain/entities/user.dart';

abstract class AuthRepository  {
  Future<User> login(String email, String password);
  Future<User> register(String email, String password, String lastname);
  Future<User> checkAuthStatus(String token);
}
