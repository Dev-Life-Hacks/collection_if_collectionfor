void main() {
  collectionIf();
  collectionFor();
}

void collectionIf() {
  // collection-if
  bool showSpecialItem = true;
  final List<String> numbers = [
    'Item 1',
    'Item 2',
    if (showSpecialItem) 'Special Item', // collection-if
  ];

  print(numbers); // [Item 1, Item 2, Special Item]
}

void collectionFor() {
  // collection-for
  final List<int> numbers = [1, 2, 3, 4, 5];
  final List<int> evenNumbers = [
    for (var number in numbers) number * 2,
  ];
  print(evenNumbers); // [2, 4, 6, 8, 10]
}
