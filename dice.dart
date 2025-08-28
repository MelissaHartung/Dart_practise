import 'dart:io';
import 'dart:math';

void main() {
  do {
    int? wurfelVersuche;
    List<int> list = [];

    print("Gib deine Würfelversuche ein");
    wurfelVersuche = int.parse(stdin.readLineSync()!);

    while (list.length < wurfelVersuche) {
      int wurfel = Random().nextInt(6) + 1;
      list.add(wurfel);

      if (list.length >= 2 && list.last == 6 && list[list.length - 2] == 6) {
        print("Anzahl der Würfe bis zur doppel 6: ${list.length}");
        print("$list");
        break;
      }
    }

    if (list.length == wurfelVersuche) {
      print("LIMIT ERREICHT");
      print("$list");
    }
  } while (true);
}
