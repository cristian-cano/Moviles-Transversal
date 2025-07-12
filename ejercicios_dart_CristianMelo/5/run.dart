import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número a multiplicar: ");
  int factor1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número a multiplicar: ");
  int factor2 = int.parse(stdin.readLineSync()!);

  int productoFinal = factor1 * factor2;

  print("El resultado de multiplicar $factor1 por $factor2 es: $productoFinal");
}
