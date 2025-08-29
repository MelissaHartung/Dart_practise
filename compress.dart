import 'dart:io';

void main() {
  stdout.write("gib den zu komprimierenden string ein: ");
  String? input = stdin.readLineSync();
  // String? input = "abbcccddddeeeeeffffffggggggghhhhhhhhijjkkkllll";
  String previousLetter = "";
  String inputCompressed = "";
  int counter = 0;

  for (int position = 0; position < input!.length; position++) {
    String currentLetter = input[position];

    if (position == 0) {
      previousLetter = currentLetter;
    }

    if (previousLetter == currentLetter) {
      counter++;
    }
    if (previousLetter != currentLetter) {

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
