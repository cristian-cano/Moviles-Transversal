import 'dart:io';

void main() {
  List<int> numeros = List.filled(10, 0);

  for (int i = 0; i < numeros.length; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    numeros[i] = int.parse(stdin.readLineSync()!);
  }

  print("\nContenido del vector:");
  for (int i = 0; i < numeros.length; i++) {
    print("Índice: $i | Posición: ${i + 1} | Valor: ${numeros[i]}");
  }
}
