import 'package:expense_tracker/domain/entities/expense.dart';

abstract class ExpenseDataSource {
  Future<List<Expense>> getExpenses();
}
