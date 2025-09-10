class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    numbers = numbers.replaceAll('\n', ',');

    return numbers
        .split(',')
        .where((s) => s.isNotEmpty)
        .map(int.parse)
        .reduce((a, b) => a + b);
  }
}
