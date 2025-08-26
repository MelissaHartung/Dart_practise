import 'dart:io';
import 'dart:math';

void main() {
  do {
    int? wurfelVersuche;
    List<int> list = [];
    int letzterwurf = 0;
    print("Gib deine Würfelversuche ein");
    wurfelVersuche = int.parse(stdin.readLineSync()!);

    while (list.length < wurfelVersuche) {
      int wurfel = Random().nextInt(6) + 1;
      list.add(wurfel);
      // Prüfe zuerst, ob die Liste lang genug ist, DANN die Werte.
      // Das nennt man "Short-Circuiting".
      if (list.length >= 2 && list.last == 6 && list[list.length - 2] == 6) {
        print("Anzahl der Würfe bis zur doppel 6: ${list.length}");
        print("$list");
        break;
      }
    }
    // Dieser Code wird erst ausgeführt, NACHDEM die Schleife beendet wurde.
    if (list.length == wurfelVersuche) {
      print("LIMIT ERREICHT");
      print("$list");
    }
  } while (true);
}
