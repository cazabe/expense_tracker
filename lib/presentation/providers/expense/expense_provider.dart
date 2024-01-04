import 'package:expense_tracker/domain/entities/expense.dart';
import 'package:expense_tracker/presentation/providers/expense/expense_repositories_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final expenseProvider =
    StateNotifierProvider<ExpenseNotifier, List<Expense>>((ref) {
  final fetchExpenses = ref.watch(expenseRespositoriesProvider).getExpenses;
  return ExpenseNotifier(fetchExpenses: fetchExpenses);
});

typedef ExpenseCallBack = Future<List<Expense>> Function();

class ExpenseNotifier extends StateNotifier<List<Expense>> {
  ExpenseCallBack fetchExpenses;
  ExpenseNotifier({required this.fetchExpenses}) : super([]);
  Future<void> loadExpenses() async {
    final List<Expense> expenses = await fetchExpenses();
    state = [...state, ...expenses];
  }
}
