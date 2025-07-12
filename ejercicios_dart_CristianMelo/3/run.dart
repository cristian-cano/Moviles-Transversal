import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  int numeroA = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int numeroB = int.parse(stdin.readLineSync()!);

  int resultadoSuma = numeroA + numeroB;

  print("La suma de $numeroA y $numeroB es: $resultadoSuma");
}
