import 'package:expense_tracker/presentation/providers/expense/expense_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});
  static const name = 'expense';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ExpenseView(),
    );
  }
}

class _ExpenseView extends ConsumerStatefulWidget {
  const _ExpenseView({
    super.key,
  });

  @override
  _ExpenseViewState createState() => _ExpenseViewState();
}

class _ExpenseViewState extends ConsumerState<_ExpenseView> {
  @override
  void initState() {
    super.initState();
    ref.read(expenseProvider.notifier).fetchExpenses();
  }

  @override
  Widget build(BuildContext context) {
    final expenses = ref.watch(expenseProvider);
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: ((context, index) {
        final expense = expenses[index];
        return ListTile(
          title: Text(expense.expenseName),
        );
      }),
    );
  }
}
