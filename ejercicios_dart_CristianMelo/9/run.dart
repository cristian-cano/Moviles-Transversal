import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione una figura geométrica:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");

  stdout.write("Opción (1-3): ");
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      print("\n--- Cálculo para Triángulo ---");
      stdout.write("Base: ");
      double baseFigura = double.parse(stdin.readLineSync()!);
      stdout.write("Altura: ");
      double alturaFigura = double.parse(stdin.readLineSync()!);
      stdout.write("Lado A: ");
      double ladoA = double.parse(stdin.readLineSync()!);
      stdout.write("Lado B: ");
      double ladoB = double.parse(stdin.readLineSync()!);
      stdout.write("Lado C: ");
      double ladoC = double.parse(stdin.readLineSync()!);

      if ([baseFigura, alturaFigura, ladoA, ladoB, ladoC].any((v) => v <= 0)) {
        print(" Error: Todos los valores deben ser mayores que cero.");
      } else {
        double area = (baseFigura * alturaFigura) / 2;
        double perimetro = ladoA + ladoB + ladoC;
        print("Figura seleccionada: Triángulo");
        print("Área: ${area.toStringAsFixed(2)} unidades²");
        print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      }
      break;

    case 2:
      print("\n--- Cálculo para Rectángulo ---");
      stdout.write("Base: ");
      double baseFigura = double.parse(stdin.readLineSync()!);
      stdout.write("Altura: ");
      double alturaFigura = double.parse(stdin.readLineSync()!);

      if (baseFigura <= 0 || alturaFigura <= 0) {
        print(" Error: Los valores deben ser mayores que cero.");
      } else {
        double area = baseFigura * alturaFigura;
        double perimetro = 2 * (baseFigura + alturaFigura);
        print("Figura seleccionada: Rectángulo");
        print("Área: ${area.toStringAsFixed(2)} unidades²");
        print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      }
      break;

    case 3:
      print("\n--- Cálculo para Círculo ---");
      stdout.write("Radio: ");
      double radioFigura = double.parse(stdin.readLineSync()!);

      if (radioFigura <= 0) {
        print(" Error: El radio debe ser mayor que cero.");
      } else {
        double area = pi * pow(radioFigura, 2);
        double perimetro = 2 * pi * radioFigura;
        print("Figura seleccionada: Círculo");
        print("Área: ${area.toStringAsFixed(2)} unidades²");
        print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      }
      break;

    default:
      print(" Opción inválida. Intente nuevamente.");
  }
}
