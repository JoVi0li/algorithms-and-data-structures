void main() {
  print(recursive(25));
}

int recursive(int factorialNumber) {
  if (factorialNumber == 1) {
    return 1;
  } else {
    return factorialNumber * recursive(factorialNumber - 1);
  }
}
