import 'package:expense_tracker/domain/datasources/expense_datasource.dart';
import 'package:expense_tracker/domain/entities/expense.dart';
import 'package:expense_tracker/domain/repositories/expense_repositories.dart';

class ExpenseRepositoryImp extends ExpenseRepositories {
  final ExpenseDataSource datasource;

  ExpenseRepositoryImp(this.datasource);

  @override
  Future<List<Expense>> getExpenses() {
    return datasource.getExpenses();
  }
}
