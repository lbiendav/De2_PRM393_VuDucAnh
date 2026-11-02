import '../data/database_helper.dart';
import '../models/expense_model.dart';

class ExpenseRepository {
  final DatabaseHelper _dbHelper;

  ExpenseRepository([DatabaseHelper? dbHelper])
      : _dbHelper = dbHelper ?? DatabaseHelper.instance;

  Future<List<ExpenseModel>> getExpenses() async {
    return await _dbHelper.getAllExpenses();
  }

  Future<int> updateExpense(ExpenseModel expense) async {
    return await _dbHelper.updateExpense(expense);
  }
}
