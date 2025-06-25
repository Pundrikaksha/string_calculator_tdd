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
  test('returns the sum of two comma-separated numbers', () {
    final calculator = Calculator();
    expect(calculator.add('1,2'), equals(3));
  });
  test('returns the sum of multiple comma-separated numbers', () {
    final calculator = Calculator();
    expect(calculator.add('1,2,3,4'), equals(10));
  });
  test('returns the sum when input includes newline as delimiter', () {
    final calculator = Calculator();
    expect(calculator.add('1\n2,3'), equals(6));
  });
  test('returns the sum when a custom single-character delimiter is used', () {
    final calculator = Calculator();
    expect(calculator.add('//;\n1;2'), equals(3));
  });
  test('throws an exception when input contains negative numbers', () {
    final calculator = Calculator();
    expect(
      () => calculator.add('1,-2,-4'),
      throwsA(
        predicate(
          (e) =>
              e is FormatException &&
              e.message == 'negatives not allowed: -2, -4',
        ),
      ),
    );
  });
  test('ignores numbers greater than 1000', () {
    final calculator = Calculator();
    expect(calculator.add('2,1001'), equals(2));
    expect(calculator.add('2,1000'), equals(1002)); // 1000 is valid
  });
}
