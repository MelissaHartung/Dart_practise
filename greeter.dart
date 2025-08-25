import 'dart:io';

void main() {
  String? vorname = '';
  String? nachname = '';
  int? alter;

  print('Gib deinen Vornamen ein:');
  String? input = stdin.readLineSync();
  vorname = input;

  print('Gib deinen Nachnamen ein:');
  String? input2 = stdin.readLineSync();
  nachname = input2;

  print('Gib dein Alter ein:');
  String? input3 = stdin.readLineSync();
  alter = int.tryParse(input3 ?? '');

  if (vorname == '' || nachname == '' || alter == null) {
    print('Ungültige Eingabe. Bitte versuche es erneut.');
  } else {
    print('Willkommen, $vorname $nachname! Du bist $alter Jahre alt.');
  }
}
