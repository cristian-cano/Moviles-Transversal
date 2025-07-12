import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  int numeroA = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int numeroB = int.parse(stdin.readLineSync()!);

  int menor = numeroA < numeroB ? numeroA : numeroB;
  int mayor = numeroA > numeroB ? numeroA : numeroB;

  stdout.write("¿Desea ver la serie par o impar? (Escriba 'par' o 'impar'): ");
  String? tipoSerie = stdin.readLineSync();

  if (tipoSerie == null || (tipoSerie != 'par' && tipoSerie != 'impar')) {
    print("Opción inválida. Debe escribir 'par' o 'impar'.");
    return;
  }

  print("Serie $tipoSerie entre $menor y $mayor:");

  for (int i = menor; i <= mayor; i++) {
    if (tipoSerie == 'par' && i % 2 == 0) {
      stdout.write("$i ");
    } else if (tipoSerie == 'impar' && i % 2 != 0) {
      stdout.write("$i ");
    }
  }

  print("");
}
