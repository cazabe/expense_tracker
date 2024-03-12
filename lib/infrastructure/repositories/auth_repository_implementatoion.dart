import 'package:expense_tracker/domain/entities/user.dart';
import 'package:expense_tracker/infrastructure/datasource/auth_datasource_implementation.dart';
import 'package:expense_tracker/presentation/screens/auth/login/domain/datasources/auth_datasource.dart';
import 'package:expense_tracker/presentation/screens/auth/login/domain/repositories/auth_repositories.dart';

class AuthRepositoryImplementation extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImplementation({AuthDataSource? dataSource})
      : dataSource = dataSource ?? AuthDataSourceImplementation();

  @override
  Future<User> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<User> register(String email, String password, String lastname) {
    return dataSource.register(email, password, lastname);
  }
}
