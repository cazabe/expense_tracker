import 'package:expense_tracker/infrastructure/models/expensedb/expense_reponsedb.dart';

class ExpenseDbResponse {
  List<ExpenseResponseDb> expenses;

  ExpenseDbResponse({required this.expenses});

  factory ExpenseDbResponse.fromJson(Map<String, dynamic> json) =>
      ExpenseDbResponse(
        expenses: List<ExpenseResponseDb>.from(
            json["expenses"].map((x) => ExpenseResponseDb.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "expenses": List<dynamic>.from(expenses.map((x) => x.toJson())),
      };
}
