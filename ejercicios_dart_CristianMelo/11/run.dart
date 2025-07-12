import 'dart:io';
import 'dart:math';

void main() {
  print("=== Clasificador de Triángulos ===");
  print("¿Cómo deseas ingresar los datos?");
  print("1. Por ángulos");
  print("2. Por lados");
  stdout.write("Elige una opción (1 o 2): ");
  int seleccion = int.parse(stdin.readLineSync()!);

  if (seleccion == 1) {
    // Clasificación por ángulos
    double anguloA = leerValor("Ángulo 1 (°): ");
    double anguloB = leerValor("Ángulo 2 (°): ");
    double anguloC = leerValor("Ángulo 3 (°): ");

    if ([anguloA, anguloB, anguloC].any((a) => a <= 0)) {
      print(" Error: Todos los ángulos deben ser mayores a cero.");
    } else if ((anguloA + anguloB + anguloC).toStringAsFixed(2) != "180.00") {
      print(" Error: La suma de los ángulos debe ser 180°.");
    } else {
      if ([anguloA, anguloB, anguloC].contains(90)) {
        print(" Triángulo rectángulo.");
      } else if ([anguloA, anguloB, anguloC].any((a) => a > 90)) {
        print(" Triángulo obtusángulo.");
      } else {
        print(" Triángulo acutángulo.");
      }
    }
  } else if (seleccion == 2) {
    // Clasificación por lados
    double ladoA = leerValor("Lado 1: ");
    double ladoB = leerValor("Lado 2: ");
    double ladoC = leerValor("Lado 3: ");

    List<double> lados = [ladoA, ladoB, ladoC]..sort();
    double menor = lados[0], medio = lados[1], mayor = lados[2];

    if ([menor, medio, mayor].any((l) => l <= 0)) {
      print(" Error: Todos los lados deben ser mayores que cero.");
    } else if (menor + medio <= mayor) {
      print(" Error: Los lados no forman un triángulo válido.");
    } else {
      // Tipo por lados
      String tipoLados;
      if (ladoA == ladoB && ladoB == ladoC) {
        tipoLados = "equilátero";
      } else if (ladoA == ladoB || ladoA == ladoC || ladoB == ladoC) {
        tipoLados = "isósceles";
      } else {
        tipoLados = "escaleno";
      }

      // Tipo por ángulo (Teorema de Pitágoras inverso)
      String tipoAngulo;
      double sumaCuadrados = pow(menor, 2) + pow(medio, 2);
      double mayorCuadrado = pow(mayor, 2);

      if ((mayorCuadrado - sumaCuadrados).abs() < 1e-3) {
        tipoAngulo = "rectángulo";
      } else if (mayorCuadrado < sumaCuadrados) {
        tipoAngulo = "acutángulo";
      } else {
        tipoAngulo = "obtusángulo";
      }

      print(" Triángulo $tipoLados y $tipoAngulo.");
    }
  } else {
    print(" Opción inválida. Reinicia el programa e intenta de nuevo.");
  }
}

double leerValor(String mensaje) {
  stdout.write(mensaje);
  return double.parse(stdin.readLineSync()!);
}
