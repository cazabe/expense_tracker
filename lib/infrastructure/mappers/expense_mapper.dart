import 'package:expense_tracker/domain/entities/expense.dart';
import 'package:expense_tracker/domain/entities/expense_type.dart';
import 'package:expense_tracker/domain/entities/payment_type.dart';
import 'package:expense_tracker/domain/entities/user.dart';
import 'package:expense_tracker/infrastructure/models/expensedb/expense_reponse.dart';

class ExpenseMapper {
  static Expense expenseToDbEntitty(ExpenseDbResponse expensedb) {
    final paymentTypeRes = PaymentType(
        id: expensedb.paymentType.id,
        status: expensedb.paymentType.status,
        paymentName: expensedb.paymentType.paymentName);
    final expenseTypeRes = ExpenseType(
        id: expensedb.expenseType.id,
        status: expensedb.expenseType.status,
        expenseType: expensedb.expenseType.expenseType);
    final userRes = User(
        id: expensedb.user.id,
        status: expensedb.user.status,
        name: expensedb.user.name,
        username: expensedb.user.username);
    return Expense(
      expenseName: expensedb.expenseName,
      amount: double.parse(expensedb.amount),
      paymentType: paymentTypeRes,
      expenseType: expenseTypeRes,
      user: userRes,
    );
  }
}
