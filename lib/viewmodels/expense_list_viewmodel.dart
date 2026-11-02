import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/expense_model.dart';
import '../repositories/expense_repository.dart';

part 'expense_list_viewmodel.g.dart';

@riverpod
class ExpenseListViewModel extends _$ExpenseListViewModel {
  final ExpenseRepository _repository = ExpenseRepository();

  @override
  Future<List<ExpenseModel>> build() async {
    return await _repository.getExpenses();
  }

  Future<void> updateExpense(ExpenseModel expense) async {
    await _repository.updateExpense(expense);
    ref.invalidateSelf();
  }
}
