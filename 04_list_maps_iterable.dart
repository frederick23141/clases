void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print('List Original ${numbers.length}');
  print('Index 0: ${numbers[2]}');
  print('Frist : ${numbers.first}');
  print('Last : ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  //set para valores unicos, no son key/value
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('GreaterThan5 : $numbersGreaterThan5');
  print('GreaterThan5 set: ${numbersGreaterThan5.toSet()}');
}
