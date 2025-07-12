import 'dart:io';

void main() {
  stdout.write("Ingrese su nombre completo: ");
  String? nombreCompleto = stdin.readLineSync();

  stdout.write("Ingrese su sexo: ");
  String? generoPersona = stdin.readLineSync();

  stdout.write("Edad actual: ");
  int edadPersona = int.parse(stdin.readLineSync()!);

  stdout.write("Salario mensual (por ejemplo: 3100000.99): ");
  double ingresoMensual = double.parse(stdin.readLineSync()!);

  stdout.write("¿Posee medio de transporte? (si/no): ");
  String? respuestaTransporte = stdin.readLineSync();
  bool tieneMedioTransporte = (respuestaTransporte?.toLowerCase() == "si");

  stdout.write("¿Cuál es el tipo de transporte? (ej: moto, bicicleta, carro): ");
  String? claseTransporte = stdin.readLineSync();

  print("\n=== RESUMEN DE INFORMACIÓN ===");
  print("Nombre completo: $nombreCompleto");
  print("Género: $generoPersona");
  print("Edad: $edadPersona años");
  print("Ingreso mensual: \$${ingresoMensual.toStringAsFixed(2)}");
  print("¿Cuenta con transporte?: ${tieneMedioTransporte ? 'Sí' : 'No'}");
  print("Tipo de transporte: ${tieneMedioTransporte ? claseTransporte : 'Ninguno'}");
}
