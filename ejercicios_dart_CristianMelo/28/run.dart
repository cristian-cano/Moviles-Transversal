import 'dart:io';

// 1. Sin parámetros y sin retorno
void sumarSinParametrosSinRetorno() {
  stdout.write("Ingrese el primer número: ");
  int numero1 = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  int numero2 = int.parse(stdin.readLineSync()!);
  int resultado = numero1 + numero2;
  print("La suma es: $resultado");
}

// 2. Con parámetros y sin retorno
void sumarConParametrosSinRetorno(int a, int b) {
  int resultado = a + b;
  print("La suma es: $resultado");
}

// 3. Sin parámetros y con retorno
int sumarSinParametrosConRetorno() {
  stdout.write("Ingrese el primer número: ");
  int numero1 = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  int numero2 = int.parse(stdin.readLineSync()!);
  return numero1 + numero2;
}

// 4. Con parámetros y con retorno
int sumarConParametrosConRetorno(int a, int b) {
  return a + b;
}

void main() {
  print("Menú de funciones de suma");
  print("1. Sin parámetros y sin retorno");
  print("2. Con parámetros y sin retorno");
  print("3. Sin parámetros y con retorno");
  print("4. Con parámetros y con retorno");

  stdout.write("Seleccione una opción (1 a 4): ");
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      sumarSinParametrosSinRetorno();
      break;
    case 2:
      stdout.write("Ingrese el primer número: ");
      int x = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int y = int.parse(stdin.readLineSync()!);
      sumarConParametrosSinRetorno(x, y);
      break;
    case 3:
      int resultado = sumarSinParametrosConRetorno();
      print("La suma es: $resultado");
      break;
    case 4:
      stdout.write("Ingrese el primer número: ");
      int x = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int y = int.parse(stdin.readLineSync()!);
      int resultado = sumarConParametrosConRetorno(x, y);
      print("La suma es: $resultado");
      break;
    default:
      print("Opción no válida.");
  }
}
