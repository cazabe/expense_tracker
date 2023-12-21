import 'package:expense_tracker/domain/entities/expense.dart';

abstract class ExpenseRepositories {
  Future<List<Expense>> getExpenses();
}
