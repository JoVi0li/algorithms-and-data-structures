void main() {
  print(sum([2, 10, 8]));
  print(numberOfItens([2, 10, 8]));
}

int sum(List<int> array) {
  return array.length == 0 ? 0 : array.removeAt(0) + sum(array);
}

int numberOfItens(List<int> array) {
  if (array.isEmpty) return 0;
  array.removeAt(0);
  return 1 + numberOfItens(array);
}
