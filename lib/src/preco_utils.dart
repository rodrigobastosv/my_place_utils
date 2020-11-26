import 'package:intl/intl.dart';

class PrecoUtils {
  static String limpaStringPreco(String preco) =>
      preco.replaceAll('R\$', '').replaceAll('.', '').replaceAll(',', '.')
        ..trim();

  static String precoToString(String preco) => 'R\$ $preco';

  static String limpaStringDesconto(String preco) =>
      preco.replaceAll('%', '').replaceAll('.', '').replaceAll(',', '.').trim();

  static double getNumeroStringPreco(String preco) => double.parse(preco
      .replaceAll('R\$', '')
      .replaceAll(',', '')
      .replaceAll('.', '')
      .trim());

  static String numeroToPreco(String preco) =>
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2)
          .format(double.parse(preco));
}
