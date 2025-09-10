import 'package:string_calculator_tdd/string_calculator_tdd.dart'
    as string_calculator_tdd;

void main() {
  var calculator = string_calculator_tdd.StringCalculator();
  print('Empty string: ${calculator.add('')}'); // 0
  print('Single number: ${calculator.add('1')}'); // 1
}
