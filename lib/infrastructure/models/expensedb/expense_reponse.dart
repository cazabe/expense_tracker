class ExpenseDbResponse {
  int id;
  String expenseName;
  String amount;
  DateTime created;
  dynamic deleted;
  String status;
  int expenseTypeId;
  int paymentTypeId;
  int userId;
  ExpenseTypeDb expenseType;
  PaymentTypeDb paymentType;
  UserDb user;

  ExpenseDbResponse({
    required this.id,
    required this.expenseName,
    required this.amount,
    required this.created,
    required this.deleted,
    required this.status,
    required this.expenseTypeId,
    required this.paymentTypeId,
    required this.userId,
    required this.expenseType,
    required this.paymentType,
    required this.user,
  });

  factory ExpenseDbResponse.fromJson(Map<String, dynamic> json) =>
      ExpenseDbResponse(
        id: json["id"],
        expenseName: json["expense_name"],
        amount: json["amount"],
        created: DateTime.parse(json["created"]),
        deleted: json["deleted"],
        status: json["status"],
        expenseTypeId: json["expenseTypeId"],
        paymentTypeId: json["paymentTypeId"],
        userId: json["userId"],
        expenseType: ExpenseTypeDb.fromJson(json["expenseType"]),
        paymentType: PaymentTypeDb.fromJson(json["paymentType"]),
        user: UserDb.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "expense_name": expenseName,
        "amount": amount,
        "created":
            "${created.year.toString().padLeft(4, '0')}-${created.month.toString().padLeft(2, '0')}-${created.day.toString().padLeft(2, '0')}",
        "deleted": deleted,
        "status": status,
        "expenseTypeId": expenseTypeId,
        "paymentTypeId": paymentTypeId,
        "userId": userId,
        "expenseType": expenseType.toJson(),
        "paymentType": paymentType.toJson(),
        "user": user.toJson(),
      };
}

class ExpenseTypeDb {
  int id;
  String expenseType;
  String status;

  ExpenseTypeDb({
    required this.id,
    required this.expenseType,
    required this.status,
  });

  factory ExpenseTypeDb.fromJson(Map<String, dynamic> json) => ExpenseTypeDb(
        id: json["id"],
        expenseType: json["expense_type"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "expense_type": expenseType,
        "status": status,
      };
}

class PaymentTypeDb {
  int id;
  String paymentName;
  String status;

  PaymentTypeDb({
    required this.id,
    required this.paymentName,
    required this.status,
  });

  factory PaymentTypeDb.fromJson(Map<String, dynamic> json) => PaymentTypeDb(
        id: json["id"],
        paymentName: json["payment_name"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "payment_name": paymentName,
        "status": status,
      };
}

class UserDb {
  int id;
  String name;
  String username;
  String password;
  String status;

  UserDb({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
    required this.status,
  });

  factory UserDb.fromJson(Map<String, dynamic> json) => UserDb(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        password: json["password"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "password": password,
        "status": status,
      };
}
