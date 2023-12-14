
void main() {
  const n = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  
  print(binarySearch(n, 10));
}


int? binarySearch(List<int> items, int wantedNumber) {
  var low = 0;
  var max = items.length - 1;

  while (low <= max) {
    var middle = ((low + max) / 2).round();
    var guess = items[middle];

    if(guess == wantedNumber) {
      return middle;
    } else if(guess < wantedNumber) {
      low = middle + 1;
    } else {
      max = middle - 1;
    }
  }

  return null;
}