class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

   
    numbers = numbers.replaceAll('\n', ',');

    final parts = numbers.split(',');
    final sum = parts.map(int.parse).reduce((a, b) => a + b);
    return sum;
  }
}
