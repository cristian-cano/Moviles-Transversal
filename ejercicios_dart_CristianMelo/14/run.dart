import 'dart:io';

void main() {
  print("===  Generador de Tablas de Multiplicar ===");

  stdout.write("Ingrese el número base para generar la tabla: ");
  int numeroBase = int.parse(stdin.readLineSync()!);

  print("\n Tabla del $numeroBase:");

  for (int multiplicador = 1; multiplicador <= 10; multiplicador++) {
    int resultado = numeroBase * multiplicador;
    print("$numeroBase x $multiplicador = $resultado");
  }
}
