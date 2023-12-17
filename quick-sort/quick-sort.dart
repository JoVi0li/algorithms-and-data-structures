void main() {
  print(quickSort([9, 5, 7, 6, 3, 4, 2, 1, 0, 8, 15, 65, 34, 89, 21, 14]));
}

List<int> quickSort(List<int> itens) {
  if (itens.length < 2) return itens;

  int pivot = itens[((itens.length - 1) / 2).round()];

  final List<int> biggers = [];
  final List<int> smallers = [];

  for (int item in itens) {
    if (item < pivot) {
      smallers.add(item);
    }
    if (item > pivot) {
      biggers.add(item);
    }
  }

  return [...quickSort(smallers), pivot, ...quickSort(biggers)];
}
