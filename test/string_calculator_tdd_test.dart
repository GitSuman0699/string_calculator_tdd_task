import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
  group('StringCalculator', () {
    late StringCalculator calculator;

    setUp(() {
      calculator = StringCalculator();
    });

    test('add_EmptyString_ReturnsZero', () {
      int result = calculator.add('');
      expect(result, equals(0));
    });
  });
}
