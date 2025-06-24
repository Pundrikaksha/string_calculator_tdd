class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    if (!numbers.contains(',')) {
      return int.parse(numbers);
    }

    final parts = numbers.split(',');
    final sum = parts.map(int.parse).reduce((a, b) => a + b);
    return sum;
  }
}
