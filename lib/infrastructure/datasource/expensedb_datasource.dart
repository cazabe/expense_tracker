import 'package:dio/dio.dart';
import 'package:expense_tracker/constants/enviroment.dart';
import 'package:expense_tracker/domain/datasources/expense_datasource.dart';
import 'package:expense_tracker/domain/entities/expense.dart';
import 'package:expense_tracker/infrastructure/mappers/expense_mapper.dart';
import 'package:expense_tracker/infrastructure/models/expensedb/expense_reponse.dart';

class ExpenseDbDatasource extends ExpenseDataSource {
  final dio = Dio(
    BaseOptions(baseUrl: Enviroment.urlBE),
  );
  @override
  Future<List<Expense>> getExpenses() async {
    final response = await dio.get('/expense');
    final expenseResponse = ExpenseDbResponse.fromJson(response.data);
    final List<Expense> expenses = expenseResponse.expenses
        .map(
          (expenseDb) => ExpenseMapper.expenseToDbEntitty(expenseDb),
        )
        .toList();
    return expenses;
  }
}

// final movbieDbResponse = MovieDbResponse.fromJson(response.data);
//     final List<Movie> movies = movbieDbResponse.results
//         .where((movieDb) => movieDb.posterPath != 'no poster')
//         .map(
//           (movieDb) => MovieMapper.movieDbToEntitty(movieDb),
//         )
//         .toList();
