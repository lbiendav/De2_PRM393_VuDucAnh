import 'package:intl/intl.dart';

class CurrencyHelper {
  static String formatAmount(double amount, String currency) {
    if (currency == 'USD') {
      int usd = (amount / 25000).round();
      return '$usd USD';
    }
    final format = NumberFormat('#,###');
    return '${format.format(amount)} VND';
  }
}
