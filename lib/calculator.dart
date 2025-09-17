class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';

    if (numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);
      numbers = numbers.substring(delimiterEndIndex + 1);
    }

    numbers = numbers.replaceAll('\n', delimiter);

    final parts = numbers.split(delimiter);
    final nums = parts.map(int.parse).toList();

    final negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException('negatives not allowed: ${negatives.join(', ')}');
    }

    return nums.reduce((a, b) => a + b);
  }
}
