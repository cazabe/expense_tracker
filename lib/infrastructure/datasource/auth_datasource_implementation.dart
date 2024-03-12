import 'package:dio/dio.dart';
import 'package:expense_tracker/config/constants/enviroment.dart';
import 'package:expense_tracker/domain/entities/user.dart';
import 'package:expense_tracker/infrastructure/mappers/user_mapper.dart';
import 'package:expense_tracker/presentation/screens/auth/login/domain/datasources/auth_datasource.dart';

class AuthDataSourceImplementation extends AuthDataSource {
  final dio = Dio(BaseOptions(baseUrl: Enviroment.apiUrl));

  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response =
          await dio.post('', data: {'email': email, 'password': password});
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<User> register(String email, String password, String lastname) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
