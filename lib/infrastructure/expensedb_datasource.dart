import 'package:dio/dio.dart';
import 'package:expense_tracker/constants/enviroment.dart';
import 'package:expense_tracker/domain/datasources/expense_datasource.dart';
import 'package:expense_tracker/domain/entities/expense.dart';

class ExpenseDbDatasource extends ExpenseDataSource {
  final dio = Dio(
    BaseOptions(baseUrl: Enviroment.urlBE),
  );
  @override
  Future<List<Expense>> getExpenses() async {
    final repsonse = await dio.get('/expense');
    final List<Expense> expenses = [];
    return expenses;
  }
}
