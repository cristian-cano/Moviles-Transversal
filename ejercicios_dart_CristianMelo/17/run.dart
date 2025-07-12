import 'dart:io';

void main() {
  print("Cálculo de factorial");

  stdout.write("Ingrese un número entre 0 y 12: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("No se puede calcular el factorial de un número negativo.");
  } else if (numero > 12) {
    print("El factorial es muy grande para ser procesado por este programa.");
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print("El factorial de $numero es: $factorial");
  }
}
