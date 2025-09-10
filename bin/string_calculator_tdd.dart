import 'package:string_calculator_tdd/string_calculator_tdd.dart'
    as string_calculator_tdd;

void main() {
  var calculator = string_calculator_tdd.StringCalculator();
  print('Empty string: ${calculator.add('')}'); // 0
  print('Single number: ${calculator.add('1')}'); // 1
  print('Two numbers: ${calculator.add('1,2')}'); // 3
  print('Multiple numbers: ${calculator.add('1,2,3,4,5')}'); // 15
  print('Numbers with newlines: ${calculator.add('1\n2,3')}'); // 6
}
