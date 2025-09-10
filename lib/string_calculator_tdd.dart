class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String numbersToProcess = numbers;

    // Check for custom delimiter
    if (numbers.startsWith('//')) {
      int delimiterEndIndex = numbers.indexOf('\n');
      if (delimiterEndIndex == -1) {
        delimiter = numbers[2];
        numbersToProcess = numbers.substring(3);
      } else {
        delimiter = numbers.substring(2, delimiterEndIndex);
        numbersToProcess = numbers.substring(delimiterEndIndex + 1);
      }
    }

    List<int> numberList = _extractNumbers(numbersToProcess, delimiter);

    return numberList.fold(0, (sum, number) => sum + number);
  }

  List<int> _extractNumbers(String numbersText, String delimiter) {
    String processedText = numbersText.replaceAll('\n', ',');
    processedText = processedText.replaceAll(delimiter, ',');

    return processedText
        .split(',')
        .where((s) => s.isNotEmpty)
        .map(int.parse)
        .toList();
  }
}
