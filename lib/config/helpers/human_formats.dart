import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadbleNumber(double number) =>
      NumberFormat.compactCurrency(decimalDigits: 0, symbol: '').format(number);
}
