import 'package:intl/intl.dart';

moneyConverter(int number) {
  final nfc = NumberFormat.currency(
    symbol: "R\$",
    locale: "pt_BR",
  );

  return nfc.format(number);
}
