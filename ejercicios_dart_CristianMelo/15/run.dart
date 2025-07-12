void main() {
  print("===  Tablas de multiplicar del 1 al 10 ===\n");

  for (int numeroActual = 1; numeroActual <= 10; numeroActual++) {
    print(" Tabla del $numeroActual:");
    for (int factor = 1; factor <= 10; factor++) {
      int resultado = numeroActual * factor;
      print("$numeroActual X $factor = $resultado");
    }
    print(""); // Línea vacía entre tablas
  }
}
