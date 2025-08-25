import 'dart:io';

void main() {
  String? vorname = '';
  String? nachname = '';
  int? alter;
  final namePattern = RegExp(r'^[a-zA-ZäöüÄÖÜß]+$');

  do {
    print('Gib deinen Vornamen ein:');
    vorname = stdin.readLineSync();
    // Die Fehlermeldung kommt, wenn die Eingabe ungültig ist.
    // Ungültig ist sie, wenn sie leer ist ODER nicht zum Muster passt.
    if (vorname == null || !namePattern.hasMatch(vorname)) {
      print('Ungültige Eingabe. Bitte nur Buchstaben verwenden.');
    }
  } while (vorname == null || !namePattern.hasMatch(vorname));

  do {
    print('Gib deinen Nachnamen ein:');
    String? input2 = stdin.readLineSync();
    nachname = input2;
    if (nachname == null || !namePattern.hasMatch(nachname)) {
      print('Ungültige Eingabe. Bitte versuche es erneut.');
    }
  } while (nachname == null || !namePattern.hasMatch(nachname));

  do {
    print('Gib dein Alter ein:');
    String? input3 = stdin.readLineSync();
    alter = int.tryParse(input3 ?? '');
    if (alter == null) {
      print('Ungültige Eingabe. Bitte gib eine Zahl ein.');
    }
  } while (alter == null);

  if (vorname != null && nachname != null && alter != null) {
    print('Willkommen, $vorname $nachname! Du bist $alter Jahre alt.');
  }
}
