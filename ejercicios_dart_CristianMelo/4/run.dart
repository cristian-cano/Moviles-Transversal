import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  int numeroX = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int numeroY = int.parse(stdin.readLineSync()!);

  int resultadoResta = numeroX - numeroY;

  print("La resta de $numeroX menos $numeroY es: $resultadoResta");
}
