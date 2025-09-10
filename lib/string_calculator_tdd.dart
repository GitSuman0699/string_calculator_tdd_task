class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    if (!numbers.contains(',')) return int.parse(numbers);
    return numbers.split(',').map(int.parse).reduce((a, b) => a + b);
  }
}
