import 'dart:io';
import 'dart:math';

void main() {
  print("Sorteo aleatorio de números");

  stdout.write("Presiona Enter para generar tus números: ");
  stdin.readLineSync();

  List<int> numerosDisponibles = List.generate(45, (index) => index + 1);

  numerosDisponibles.shuffle(Random());
  List<int> numerosSeleccionados = numerosDisponibles.sublist(0, 6)..sort();

  print("\nNúmeros seleccionados:");
  print(numerosSeleccionados.join(' - '));
}
