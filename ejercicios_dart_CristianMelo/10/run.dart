import 'dart:io';
import 'dart:math';

void main() {
  print("=== Cálculo de propiedades de un cilindro cerrado ===");

  stdout.write("Ingrese el radio del cilindro (mayor que 0): ");
  double radioCilindro = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del cilindro (mayor que 0): ");
  double alturaCilindro = double.parse(stdin.readLineSync()!);

  if (radioCilindro <= 0 || alturaCilindro <= 0) {
    print("Error: El radio y la altura deben ser mayores que cero.");
  } else {
    double areaSuperficial = 2 * pi * radioCilindro * (radioCilindro + alturaCilindro);
    double perimetroCircular = 2 * pi * radioCilindro;
    double volumenCilindro = pi * pow(radioCilindro, 2) * alturaCilindro;

    print("\n--- Resultados ---");
    print("Figura: Cilindro con tapa (cerrado)");
    print("Área total: ${areaSuperficial.toStringAsFixed(2)} unidades²");
    print("Perímetro de la base: ${perimetroCircular.toStringAsFixed(2)} unidades");
    print("Volumen: ${volumenCilindro.toStringAsFixed(2)} unidades³");
  }
}
