import 'dart:io';

void main() {
  print("===  Secuencia de Fibonacci ===");

  stdout.write("¿Cuántos términos deseas ver? ");
  int cantidad = int.parse(stdin.readLineSync()!);

  if (cantidad <= 0) {
    print(" Debes ingresar un número mayor que cero.");
    return;
  }

  int valorPrevio = 0, valorActual = 1;

  print(" Los primeros $cantidad términos de la secuencia de Fibonacci:");

  for (int i = 0; i < cantidad; i++) {
    stdout.write("$valorPrevio");
    if (i < cantidad - 1) stdout.write(", ");
    int siguienteValor = valorPrevio + valorActual;
    valorPrevio = valorActual;
    valorActual = siguienteValor;
  }

  print(""); // Línea final
}
