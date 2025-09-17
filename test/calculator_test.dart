import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/calculator.dart';
import 'package:string_calculator_tdd/calculator.dart';

void main() {
  group('String Calculator', () {
    test('returns 0 for empty string', () {
      final calculator = Calculator();
      expect(calculator.add(''), equals(0));
    });
  });
  test('returns the number itself when input is a single number', () {
  final calculator = Calculator();
  expect(calculator.add('1'), equals(1));
});
}
