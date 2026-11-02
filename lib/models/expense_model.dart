class ExpenseModel {
  int? id;
  String title;
  String category;
  String date;
  double amount;

  ExpenseModel({
    this.id,
    required this.title,
    required this.category,
    required this.date,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'date': date,
      'amount': amount,
    };
  }

  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      id: map['id'],
      title: map['title'],
      category: map['category'],
      date: map['date'],
      amount: (map['amount'] as num).toDouble(),
    );
  }
}
