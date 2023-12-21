// GoRouter configuration
import 'package:expense_tracker/presentation/screens/expense/expense_screen.dart';
import 'package:expense_tracker/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/expense',
      name: ExpenseScreen.name,
      builder: (context, state) => const ExpenseScreen(),
    ),
  ],
);
