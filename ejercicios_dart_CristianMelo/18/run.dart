import 'dart:io';

void main() {
  print("Ordenador de tres números");

  stdout.write("Ingrese el primer número: ");
  int numeroA = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int numeroB = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el tercer número: ");
  int numeroC = int.parse(stdin.readLineSync()!);

  List<int> numeros = [numeroA, numeroB, numeroC];

  stdout.write("¿Desea ordenarlos de 'mayor a menor' o 'menor a mayor'?: ");
  String opcion = stdin.readLineSync()!.toLowerCase();

  if (opcion.contains("menor")) {
    numeros.sort();
    print("Orden ascendente: ${numeros.join(', ')}");
  } else if (opcion.contains("mayor")) {
    numeros.sort((a, b) => b.compareTo(a));
    print("Orden descendente: ${numeros.join(', ')}");
  } else {
    print("No se reconoció la opción. Debe escribir 'mayor a menor' o 'menor a mayor'.");
  }
}
