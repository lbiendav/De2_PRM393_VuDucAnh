import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'currency_viewmodel.g.dart';

@riverpod
class CurrencyViewModel extends _$CurrencyViewModel {
  @override
  String build() {
    _loadCurrency();
    return 'VND';
  }

  void _loadCurrency() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString('currency');
    if (saved != null) {
      state = saved;
    }
  }

  void setCurrency(String newCurrency) async {
    state = newCurrency;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('currency', newCurrency);
  }
}
