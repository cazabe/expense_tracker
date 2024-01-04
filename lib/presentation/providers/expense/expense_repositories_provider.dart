import 'package:expense_tracker/infrastructure/datasource/expensedb_datasource.dart';
import 'package:expense_tracker/infrastructure/repositories/expense_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final expenseRespositoriesProvider = Provider((ref) {
  return ExpenseRepositoryImp(ExpenseDbDatasource());
});
