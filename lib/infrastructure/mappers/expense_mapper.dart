import 'package:expense_tracker/domain/entities/expense.dart';
import 'package:expense_tracker/domain/entities/expense_type.dart';
import 'package:expense_tracker/domain/entities/payment_type.dart';
import 'package:expense_tracker/domain/entities/user.dart';
import 'package:expense_tracker/infrastructure/models/expensedb/expense_reponsedb.dart';

class ExpenseMapper {
  static Expense expenseToDbEntitty(ExpenseResponseDb expensedb) => Expense(
      expenseName: expensedb.expenseName,
      amount: double.parse(expensedb.amount),
      paymentType: PaymentType(
          id: expensedb.paymentType.id,
          status: expensedb.paymentType.status,
          paymentName: expensedb.paymentType.paymentName),
      expenseType: ExpenseType(
          id: expensedb.expenseType.id,
          status: expensedb.expenseType.status,
          expenseType: expensedb.expenseType.expenseType),
      user: User(
          id: expensedb.user.id,
          status: expensedb.user.status,
          name: expensedb.user.name,
          token: expensedb.user.token,
          username: expensedb.user.username));
}



// class MovieMapper {
//   static Movie movieDbToEntitty(MovieMovieDb movieDb) => Movie(
//       adult: movieDb.adult,
//       backdropPath: movieDb.backdropPath != ''
//           ? 'https://image.tmdb.org/t/p/w500/${movieDb.backdropPath}'
//           : 'https://www.idig-system.com/wp-content/themes/brixel/images/No-Image-Found-400x264.png',
//       genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
//       id: movieDb.id,
//       originalLanguage: movieDb.originalLanguage,
//       originalTitle: movieDb.originalTitle,
//       overview: movieDb.overview,
//       popularity: movieDb.popularity,
//       posterPath: movieDb.posterPath != ''
//           ? 'https://image.tmdb.org/t/p/w500/${movieDb.posterPath}'
//           : 'no poster',
//       releaseDate: movieDb.releaseDate,
//       title: movieDb.title,
//       video: movieDb.video,
//       voteAverage: movieDb.voteAverage,
//       voteCount: movieDb.voteCount);
// }


// expensedb.id = 
//     final paymentTypeRes = PaymentType(
//         id: expensedb.paymentType.id,
//         status: expensedb.paymentType.status,
//         paymentName: expensedb.paymentType.paymentName);
//     final expenseTypeRes = ExpenseType(
//         id: expensedb.expenseType.id,
//         status: expensedb.expenseType.status,
//         expenseType: expensedb.expenseType.expenseType);
//     final userRes = User(
//         id: expensedb.user.id,
//         status: expensedb.user.status,
//         name: expensedb.user.name,
//         username: expensedb.user.username);
//     return Expense(
//       expenseName: expensedb.expenseName,
//       amount: double.parse(expensedb.amount),
//       paymentType: paymentTypeRes,
//       expenseType: expenseTypeRes,
//       user: userRes,
