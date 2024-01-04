import 'package:expense_tracker/domain/entities/expense_type.dart';
import 'package:expense_tracker/domain/entities/payment_type.dart';
import 'package:expense_tracker/domain/entities/user.dart';

class Expense {
  final String expenseName;
  final double amount;
  final PaymentType paymentType;
  final ExpenseType expenseType;
  final User user;
  Expense(
      {required this.expenseName,
      required this.amount,
      required this.paymentType,
      required this.expenseType,
      required this.user});
}
