import 'package:expense_tracker/domain/entities/user.dart';
import 'package:expense_tracker/infrastructure/repositories/auth_repository_implementatoion.dart';
import 'package:expense_tracker/presentation/screens/auth/login/domain/repositories/auth_repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = AuthRepositoryImplementation();
  return AuthNotifier(authRepository: authRepository);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;
  AuthNotifier({required this.authRepository}) : super(AuthState());

  void loginUser(String email, String password) async {}

  void registerUser(String email, String password) async {}

  void checkAuthStatus() async {}
}

enum AuthStatus { checking, authenticated, notAutheticated }

class AuthState {
  final AuthStatus authStatus;
  final User? user;
  final String erroMessage;

  AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.erroMessage = ''});

  AuthState copyWith(
          {AuthStatus? authStatus, User? user, String? erroMessage }) =>
      AuthState(
          authStatus: authStatus ?? this.authStatus,
          user: user ?? this.user,
          erroMessage: erroMessage ?? this.erroMessage);
}
