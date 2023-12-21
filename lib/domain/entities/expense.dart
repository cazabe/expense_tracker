class Expense {
  final String expenseName;
  final double amount;
  final Map<String, dynamic> paymentTypeId;
  final Map<String, dynamic> expenseTypeId;
  final Map<String, dynamic> userId;
  Expense(
      {required this.expenseName,
      required this.amount,
      required this.paymentTypeId,
      required this.expenseTypeId,
      required this.userId});
}
