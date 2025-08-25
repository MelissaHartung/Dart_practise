import 'dart:io';

void main() {
  String? vorname = '';
  String? nachname = '';
  int? alter;
  do {
    print('Gib deinen Vornamen ein:');
    String? input = stdin.readLineSync();
    vorname = input;
    if (vorname == '') {
      print('Ungültige Eingabe. Bitte versuche es erneut.');
    }
  } while (vorname == '');

  do {
    print('Gib deinen Nachnamen ein:');
    String? input2 = stdin.readLineSync();
    nachname = input2;

    if (nachname == '') {
      print('Ungültige Eingabe. Bitte versuche es erneut.');
    }
  } while (nachname == '');
  do {
    print('Gib dein Alter ein:');
    String? input3 = stdin.readLineSync();
    alter = int.tryParse(input3 ?? '');
    if (alter == null) {
      print('Ungültige Eingabe. Bitte versuche es erneut.');
    }
  } while (alter == null);

  if (vorname != null && nachname != null && alter != null) {
    print('Willkommen, $vorname $nachname! Du bist $alter Jahre alt.');
  }
}
