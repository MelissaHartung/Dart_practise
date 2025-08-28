import 'dart:io';

void main() {
  stdout.write("gib den zu komprimierenden string ein: ");
  String? input = stdin.readLineSync();
  // String? input = "abbcccddddeeeeeffffffggggggghhhhhhhhijjkkkllll";
  String previousLetter = "";
  String inputCompressed = "";

  for (int position = 0, counter = 0; position < input!.length; position++) {
    String currentLetter = input[position];
    int end = input.length - 1;

    if (position == 0) {
      previousLetter = currentLetter;
    }

    if (previousLetter == currentLetter) {
      counter++;
    }
    if (previousLetter != currentLetter) {
      print(position);
      print(counter);
      print(currentLetter);
      if (counter == 1) inputCompressed += previousLetter;
      if (counter == 2) inputCompressed += previousLetter + previousLetter;
      if (counter > 2) inputCompressed += counter.toString() + previousLetter;
      previousLetter = currentLetter;
      counter = 1;
    }
  }

  stdout.write("deine komprimierter string ist: $inputCompressed");
}

// if (condition && condition || condition) {
//   action
// }
