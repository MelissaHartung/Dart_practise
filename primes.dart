import 'dart:ffi';
import 'dart:math';
import 'dart:io';

bool isPrime(int number) {
  if (number == 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;
  for (int divider = 3; divider <= sqrt(number); divider += 2) {
    if (number % divider == 0) return false;
  }
  return true;
}

void main() {
  stdout.write("Enter a number: ");
  String? input = stdin.readLineSync();
  int? n = int.tryParse(input ?? '');
  if (n == null) return;
  for (int i = 1; i <= n; i++) {
    if (isPrime(i)) {
      print("$i");
    }
  }
}
