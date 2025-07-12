import 'dart:io';

void main() {
  stdout.write("Ingrese un número entero positivo: ");
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print("No se ingresó ningún número.");
    return;
  }

  String numeroTexto = entrada.trim().replaceAll('-', '');

  if (!RegExp(r'^\d+$').hasMatch(numeroTexto)) {
    print("Entrada inválida. Ingrese un número entero positivo.");
    return;
  }

  int longitud = numeroTexto.length;

  print("El número $entrada tiene $longitud dígito${longitud > 1 ? 's' : ''}.");
}
