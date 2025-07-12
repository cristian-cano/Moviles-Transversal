import 'dart:io';

void main() {
  stdout.write("¿Cuántos elementos desea ingresar en el vector?: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> datos = List.filled(cantidad, 0);

  for (int i = 0; i < cantidad; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    datos[i] = int.parse(stdin.readLineSync()!);
  }

  stdout.write("¿Cómo desea ordenar el vector? (A)scendente o (D)escendente: ");
  String? tipoOrden = stdin.readLineSync();

  if (tipoOrden != null && (tipoOrden.toUpperCase() == 'A' || tipoOrden.toUpperCase() == 'ASCENDENTE')) {
    datos.sort();
    print("\nVector ordenado de forma ascendente:");
  } else if (tipoOrden != null && (tipoOrden.toUpperCase() == 'D' || tipoOrden.toUpperCase() == 'DESCENDENTE')) {
    datos.sort((a, b) => b.compareTo(a));
    print("\nVector ordenado de forma descendente:");
  } else {
    print("\nOpción inválida. Se mostrará el vector sin ordenar:");
  }

  print(datos);
}
