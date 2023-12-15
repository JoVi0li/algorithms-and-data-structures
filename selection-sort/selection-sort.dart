void main() {
  print(selectionSort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0], false));
  print(selectionSort([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], true));
}

List<int> selectionSort(List<int> items, bool largestToSmallest) {
  final List<int> sortedItems = [];
  final itemsLength = items.length;

  if (largestToSmallest) {
    for (int i = 0; i < itemsLength; i++) {
      final biggest = findBiggest(items);
      sortedItems.add(items.removeAt(biggest));
    }
  } else {
    for (int i = 0; i < itemsLength; i++) {
      final smallest = findSmallest(items);
      sortedItems.add(items.removeAt(smallest));
    }
  }
  return sortedItems;
}

int findSmallest(List<int> items) {
  var smallest = items[0];
  var smallestIndex = 0;

  for (int i = 0; i < items.length; i++) {
    if (items[i] < smallest) {
      smallest = items[i];
      smallestIndex = i;
    }
  }

  return smallestIndex;
}

int findBiggest(List<int> items) {
  var biggest = items[0];
  var biggestIndex = 0;

  for (int i = 0; i < items.length; i++) {
    if (items[i] > biggest) {
      biggest = items[i];
      biggestIndex = i;
    }
  }

  return biggestIndex;
}
