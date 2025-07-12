import 'dart:io';

void main() {
  print("===  Bienvenido a SuperCompras ===");

  stdout.write("Ingrese el nombre del producto: ");
  String nombreProducto = stdin.readLineSync()!;

  stdout.write("Ingrese el precio por unidad: ");
  double valorUnitario = double.parse(stdin.readLineSync()!);

  stdout.write("¿Cuántas unidades desea llevar?: ");
  int cantidadUnidades = int.parse(stdin.readLineSync()!);

  stdout.write("¿El producto hace parte de la canasta familiar? (si/no): ");
  String respuestaCanasta = stdin.readLineSync()!.trim().toLowerCase();

  double valorBase = valorUnitario * cantidadUnidades;
  double totalFinal;

  if (respuestaCanasta == 'si') {
    totalFinal = valorBase;
    print(" El producto está exento de IVA por pertenecer a la canasta familiar.");
  } else if (respuestaCanasta == 'no') {
    totalFinal = valorBase * 1.19;
    print(" El producto incluye IVA del 19%.");
  } else {
    print(" Opción no reconocida. Se asume que no tiene IVA.");
    totalFinal = valorBase;
  }

  print(" Total a pagar por '$nombreProducto': \$${totalFinal.toStringAsFixed(2)}");
}
