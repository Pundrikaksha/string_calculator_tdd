class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    if (!numbers.contains(',')) {
      return int.parse(numbers);
    }

    throw UnimplementedError(); // placeholder for future steps
  }
}