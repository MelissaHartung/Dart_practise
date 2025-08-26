import 'dart:io';

void main() {
  String? vorname = '';
  String? nachname = '';
  int? alter;
  final namePattern = RegExp(r'^[a-zA-ZäöüÄÖÜß]+$');
  DateTime now = DateTime.now();
  int stunde = now.hour;

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
    String? input3 = stdin.readLineSync(); //Inputfeld
    alter = int.tryParse(input3 ?? '');

    if (alter == null || alter < 1 || alter > 150) {
      print('Ungültige Eingabe. Bitte gib eine Zahl zwischen 1 und 150 ein.');
    }
  } while (alter == null || alter < 1 || alter > 150);

  if (alter < 40) {
    print('Hallo, $vorname');
  } else if (stunde < 12 && alter >= 40) {
    print('Guten Morgen! $vorname $nachname');
  } else if (stunde < 18 && alter >= 40) {
    print('Guten Tag! $vorname $nachname');
  } else if (stunde < 22 && alter >= 40) {
    print('Guten Abend! $vorname $nachname');
  }
}
