import 'dart:io';
import 'dart:math';

// ================================
// TALLER DE DART - EJERCICIOS 1-30
// ================================

void main() {
  print('=== TALLER DE DART - EJERCICIOS 1-30 ===');
  print('Seleccione el ejercicio que desea ejecutar (1-30):');
  
  // Menú principal
  mostrarMenu();
  
  String? opcion = stdin.readLineSync();
  int ejercicio = int.tryParse(opcion ?? '') ?? 0;
  
  switch (ejercicio) {
    case 1: ejercicio1(); break;
    case 2: ejercicio2(); break;
    case 3: ejercicio3(); break;
    case 4: ejercicio4(); break;
    case 5: ejercicio5(); break;
    case 6: ejercicio6(); break;
    case 7: ejercicio7(); break;
    case 8: ejercicio8(); break;
    case 9: ejercicio9(); break;
    case 10: ejercicio10(); break;
    case 11: ejercicio11(); break;
    case 12: ejercicio12(); break;
    case 13: ejercicio13(); break;
    case 14: ejercicio14(); break;
    case 15: ejercicio15(); break;
    case 16: ejercicio16(); break;
    case 17: ejercicio17(); break;
    case 18: ejercicio18(); break;
    case 19: ejercicio19(); break;
    case 20: ejercicio20(); break;
    case 21: ejercicio21(); break;
    case 22: ejercicio22(); break;
    case 23: ejercicio23(); break;
    case 24: ejercicio24(); break;
    case 25: ejercicio25(); break;
    case 26: ejercicio26(); break;
    case 27: ejercicio27(); break;
    case 28: ejercicio28(); break;
    case 29: ejercicio29(); break;
    case 30: ejercicio30(); break;
    default: print('Opción inválida');
  }
}

void mostrarMenu() {
  print('\n1. Constantes y tipos de datos');
  print('2. Variables');
  print('3. Suma de dos números');
  print('4. Resta de dos números');
  print('5. Multiplicación de dos números');
  print('6. División de dos números');
  print('7. Combinación de colores');
  print('8. Calculadora básica');
  print('9. Área y perímetro de figuras');
  print('10. Cilindro con tapa');
  print('11. Tipo de triángulo');
  print('12. Juego de dados');
  print('13. Facturación con IVA');
  print('14. Tabla de multiplicar');
  print('15. Todas las tablas de multiplicar');
  print('16. Serie de Fibonacci');
  print('17. Factorial');
  print('18. Ordenar tres números');
  print('19. Números aleatorios Baloto');
  print('20. Descomponer número');
  print('21. Serie par o impar');
  print('22. Vector de 10 posiciones');
  print('23. Matriz de compañeros');
  print('24. Ejercicios 12-21 con arreglos');
  print('25. Ordenar vector');
  print('26. Juego Guayabita');
  print('27. Sistema de facturación');
  print('28. Menú de funciones');
  print('29. Todos los ejercicios con funciones');
  print('30. Archivos planos');
  print('\nIngrese el número del ejercicio:');
}

// ================================
// EJERCICIO 1: Constantes, tipos de datos y concatenación
// ================================
void ejercicio1() {
  print('\n=== EJERCICIO 1: Constantes y tipos de datos ===');
  
  const String nombre = 'Juan Pérez';
  const String sexo = 'Masculino';
  const int edad = 25;
  const double salario = 2500000.50;
  const bool tieneVehiculo = true;
  
  print('Nombre: $nombre');
  print('Sexo: $sexo');
  print('Edad: $edad años');
  print('Salario: \$${salario.toStringAsFixed(2)}');
  print('Tiene vehículo: ${tieneVehiculo ? 'Sí' : 'No'}');
}

// ================================
// EJERCICIO 2: Variables
// ================================
void ejercicio2() {
  print('\n=== EJERCICIO 2: Variables ===');
  
  print('Ingrese su nombre:');
  String? nombre = stdin.readLineSync();
  
  print('Ingrese su sexo:');
  String? sexo = stdin.readLineSync();
  
  print('Ingrese su edad:');
  int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('Ingrese su salario (incluyendo centavos):');
  double salario = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('¿Tiene vehículo? (s/n):');
  String? respuesta = stdin.readLineSync();
  bool tieneVehiculo = respuesta?.toLowerCase() == 's';
  
  print('\n--- DATOS INGRESADOS ---');
  print('Nombre: $nombre');
  print('Sexo: $sexo');
  print('Edad: $edad años');
  print('Salario: \$${salario.toStringAsFixed(2)}');
  print('Tiene vehículo: ${tieneVehiculo ? 'Sí' : 'No'}');
}

// ================================
// EJERCICIO 3: Suma de dos números
// ================================
void ejercicio3() {
  print('\n=== EJERCICIO 3: Suma de dos números ===');
  
  print('Ingrese el primer número:');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese el segundo número:');
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  double resultado = a + b;
  print('La suma del número $a con el número $b es: $resultado');
}

// ================================
// EJERCICIO 4: Resta de dos números
// ================================
void ejercicio4() {
  print('\n=== EJERCICIO 4: Resta de dos números ===');
  
  print('Ingrese el primer número:');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese el segundo número:');
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  double resultado = a - b;
  print('La diferencia del número $a con el número $b es: $resultado');
}

// ================================
// EJERCICIO 5: Multiplicación de dos números
// ================================
void ejercicio5() {
  print('\n=== EJERCICIO 5: Multiplicación de dos números ===');
  
  print('Ingrese el primer número:');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese el segundo número:');
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  double resultado = a * b;
  print('El producto del número $a con el número $b es: $resultado');
}

// ================================
// EJERCICIO 6: División de dos números
// ================================
void ejercicio6() {
  print('\n=== EJERCICIO 6: División de dos números ===');
  
  print('Ingrese el primer número:');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese el segundo número:');
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  if (b == 0) {
    print('Imposible la división por 0');
  } else {
    double resultado = a / b;
    print('La división del número $a entre el número $b es: $resultado');
  }
}

// ================================
// EJERCICIO 7: Combinación de colores
// ================================
void ejercicio7() {
  print('\n=== EJERCICIO 7: Combinación de colores ===');
  
  print('Menú de colores:');
  print('1. Amarillo');
  print('2. Azul');
  print('3. Rojo');
  
  print('Ingrese el primer color (1-3):');
  int color1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('Ingrese el segundo color (1-3):');
  int color2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  String resultado = '';
  
  if (color1 < 1 || color1 > 3 || color2 < 1 || color2 > 3) {
    resultado = 'Números fuera del rango';
  } else if (color1 == color2) {
    switch (color1) {
      case 1: resultado = 'amarillo intenso'; break;
      case 2: resultado = 'azul intenso'; break;
      case 3: resultado = 'rojo intenso'; break;
    }
  } else {
    if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
      resultado = 'naranja';
    } else if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
      resultado = 'verde';
    } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
      resultado = 'morado';
    }
  }
  
  print('Su combinación es: $resultado');
}

// ================================
// EJERCICIO 8: Calculadora básica
// ================================
void ejercicio8() {
  print('\n=== EJERCICIO 8: Calculadora básica ===');
  
  print('Menú de operaciones:');
  print('1. Suma');
  print('2. Resta');
  print('3. Multiplicación');
  print('4. División');
  print('5. Módulo');
  print('6. Cuadrado');
  print('7. Raíz cuadrada');
  print('8. Potencia');
  print('9. Porcentaje');
  print('10. Número aleatorio');
  
  print('Seleccione una operación:');
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  switch (opcion) {
    case 1:
      print('Ingrese dos números:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Resultado: ${a + b}');
      break;
    case 2:
      print('Ingrese dos números:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Resultado: ${a - b}');
      break;
    case 3:
      print('Ingrese dos números:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Resultado: ${a * b}');
      break;
    case 4:
      print('Ingrese dos números:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      if (b != 0) {
        print('Resultado: ${a / b}');
      } else {
        print('Error: División por cero');
      }
      break;
    case 5:
      print('Ingrese dos números enteros:');
      int a = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      int b = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (b != 0) {
        print('Resultado: ${a % b}');
      } else {
        print('Error: División por cero');
      }
      break;
    case 6:
      print('Ingrese un número:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Resultado: ${a * a}');
      break;
    case 7:
      print('Ingrese un número:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      if (a >= 0) {
        print('Resultado: ${sqrt(a)}');
      } else {
        print('Error: No se puede calcular la raíz de un número negativo');
      }
      break;
    case 8:
      print('Ingrese la base:');
      double base = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Ingrese el exponente:');
      double exponente = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Resultado: ${pow(base, exponente)}');
      break;
    case 9:
      print('Ingrese el número:');
      double numero = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Ingrese el porcentaje:');
      double porcentaje = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      print('Resultado: ${numero * porcentaje / 100}');
      break;
    case 10:
      Random random = Random();
      print('Número aleatorio: ${random.nextInt(100)}');
      break;
    default:
      print('Opción inválida');
  }
}

// ================================
// EJERCICIO 9: Área y perímetro de figuras
// ================================
void ejercicio9() {
  print('\n=== EJERCICIO 9: Área y perímetro de figuras ===');
  
  bool continuar = true;
  
  while (continuar) {
    print('\nMenú de figuras:');
    print('1. Triángulo');
    print('2. Rectángulo');
    print('3. Círculo');
    print('4. Salir');
    
    print('Seleccione una figura:');
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    switch (opcion) {
      case 1:
        print('Ingrese la base del triángulo:');
        double base = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese la altura del triángulo:');
        double altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese los tres lados del triángulo:');
        double lado1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        double lado2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        double lado3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        
        if (base > 0 && altura > 0 && lado1 > 0 && lado2 > 0 && lado3 > 0) {
          double area = (base * altura) / 2;
          double perimetro = lado1 + lado2 + lado3;
          print('Figura: Triángulo');
          print('Área: $area unidades cuadradas');
          print('Perímetro: $perimetro unidades');
        } else {
          print('Error: Los valores deben ser mayores a cero');
        }
        break;
        
      case 2:
        print('Ingrese la base del rectángulo:');
        double base = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese la altura del rectángulo:');
        double altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        
        if (base > 0 && altura > 0) {
          double area = base * altura;
          double perimetro = 2 * (base + altura);
          print('Figura: Rectángulo');
          print('Área: $area unidades cuadradas');
          print('Perímetro: $perimetro unidades');
        } else {
          print('Error: Los valores deben ser mayores a cero');
        }
        break;
        
      case 3:
        print('Ingrese el radio del círculo:');
        double radio = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        
        if (radio > 0) {
          double area = pi * radio * radio;
          double perimetro = 2 * pi * radio;
          print('Figura: Círculo');
          print('Área: $area unidades cuadradas');
          print('Perímetro: $perimetro unidades');
        } else {
          print('Error: El radio debe ser mayor a cero');
        }
        break;
        
      case 4:
        continuar = false;
        break;
        
      default:
        print('Opción inválida');
    }
  }
}

// ================================
// EJERCICIO 10: Cilindro con tapa
// ================================
void ejercicio10() {
  print('\n=== EJERCICIO 10: Cilindro con tapa ===');
  
  print('Ingrese el radio del cilindro:');
  double radio = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese la altura del cilindro:');
  double altura = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  if (radio > 0 && altura > 0) {
    // Área de la superficie del cilindro con tapa
    double areaTapas = 2 * pi * radio * radio;
    double areaCuerpo = 2 * pi * radio * altura;
    double areaTotal = areaTapas + areaCuerpo;
    
    // Perímetro (circunferencia de la base)
    double perimetro = 2 * pi * radio;
    
    // Volumen
    double volumen = pi * radio * radio * altura;
    
    print('Cilindro con tapa:');
    print('Área total del material: ${areaTotal.toStringAsFixed(2)} unidades cuadradas');
    print('Perímetro de la base: ${perimetro.toStringAsFixed(2)} unidades');
    print('Volumen: ${volumen.toStringAsFixed(2)} unidades cúbicas');
  } else {
    print('Error: Los valores deben ser mayores a cero');
  }
}

// ================================
// EJERCICIO 11: Tipo de triángulo
// ================================
void ejercicio11() {
  print('\n=== EJERCICIO 11: Tipo de triángulo ===');
  
  bool continuar = true;
  
  while (continuar) {
    print('\nMenú de clasificación:');
    print('1. Por ángulos');
    print('2. Por lados');
    print('3. Salir');
    
    print('Seleccione una opción:');
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    switch (opcion) {
      case 1:
        print('Ingrese el primer ángulo:');
        double angulo1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese el segundo ángulo:');
        double angulo2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese el tercer ángulo:');
        double angulo3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        
        if (angulo1 > 0 && angulo2 > 0 && angulo3 > 0) {
          if ((angulo1 + angulo2 + angulo3) == 180) {
            String tipo = '';
            if (angulo1 == 90 || angulo2 == 90 || angulo3 == 90) {
              tipo = 'rectángulo';
            } else if (angulo1 > 90 || angulo2 > 90 || angulo3 > 90) {
              tipo = 'obtusángulo';
            } else {
              tipo = 'acutángulo';
            }
            print('Su triángulo es: $tipo');
          } else {
            print('Error: La suma de los ángulos debe ser 180°');
          }
        } else {
          print('Error: Los ángulos deben ser mayores a cero');
        }
        break;
        
      case 2:
        print('Ingrese el primer lado:');
        double lado1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese el segundo lado:');
        double lado2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        print('Ingrese el tercer lado:');
        double lado3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        
        if (lado1 > 0 && lado2 > 0 && lado3 > 0) {
          // Verificar si es un triángulo válido
          if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
            String tipo = '';
            if (lado1 == lado2 && lado2 == lado3) {
              tipo = 'equilátero';
            } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
              tipo = 'isósceles';
            } else {
              tipo = 'escaleno';
            }
            print('Su triángulo es: $tipo');
          } else {
            print('Error: Los lados no forman un triángulo válido');
          }
        } else {
          print('Error: Los lados deben ser mayores a cero');
        }
        break;
        
      case 3:
        continuar = false;
        break;
        
      default:
        print('Opción inválida');
    }
  }
}

// ================================
// EJERCICIO 12: Juego de dados
// ================================
void ejercicio12() {
  print('\n=== EJERCICIO 12: Juego de dados ===');
  
  Random random = Random();
  int intentos = 0;
  int maxIntentos = 3;
  
  while (intentos < maxIntentos) {
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;
    
    print('Lanzamiento ${intentos + 1}: Dado 1 = $dado1, Dado 2 = $dado2');
    
    if (dado1 == dado2) {
      intentos++;
      if (intentos == maxIntentos) {
        print('¡Saca una ficha!');
        break;
      } else {
        print('Lanzar de nuevo');
      }
    } else {
      print('¡Lanza de nuevo!');
      break;
    }
  }
}

// ================================
// EJERCICIO 13: Facturación con IVA
// ================================
void ejercicio13() {
  print('\n=== EJERCICIO 13: Facturación con IVA ===');
  
  print('Ingrese el nombre del artículo:');
  String? nombre = stdin.readLineSync();
  
  print('Ingrese el valor unitario:');
  double valorUnitario = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese la cantidad:');
  int cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('¿Es de la canasta familiar? (s/n):');
  String? respuesta = stdin.readLineSync();
  bool esCanasta = respuesta?.toLowerCase() == 's';
  
  double subtotal = valorUnitario * cantidad;
  double iva = esCanasta ? 0.0 : subtotal * 0.19;
  double total = subtotal + iva;
  
  print('\n--- FACTURA ---');
  print('Artículo: $nombre');
  print('Valor unitario: \$${valorUnitario.toStringAsFixed(2)}');
  print('Cantidad: $cantidad');
  print('Subtotal: \$${subtotal.toStringAsFixed(2)}');
  print('IVA (19%): \$${iva.toStringAsFixed(2)}');
  print('Total: \$${total.toStringAsFixed(2)}');
}

// ================================
// EJERCICIO 14: Tabla de multiplicar
// ================================
void ejercicio14() {
  print('\n=== EJERCICIO 14: Tabla de multiplicar ===');
  
  print('Ingrese el número para mostrar su tabla de multiplicar:');
  int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('\nTabla de multiplicar del $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}

// ================================
// EJERCICIO 15: Todas las tablas de multiplicar
// ================================
void ejercicio15() {
  print('\n=== EJERCICIO 15: Todas las tablas de multiplicar ===');
  
  for (int tabla = 1; tabla <= 10; tabla++) {
    print('\nTabla de multiplicar del $tabla:');
    for (int i = 1; i <= 10; i++) {
      print('$tabla x $i = ${tabla * i}');
    }
  }
}

// ================================
// EJERCICIO 16: Serie de Fibonacci
// ================================
void ejercicio16() {
  print('\n=== EJERCICIO 16: Serie de Fibonacci ===');
  
  print('Ingrese la cantidad de números de la serie de Fibonacci:');
  int cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  if (cantidad <= 0) {
    print('Error: La cantidad debe ser mayor a cero');
    return;
  }
  
  print('\nSerie de Fibonacci:');
  
  int a = 0, b = 1;
  
  for (int i = 0; i < cantidad; i++) {
    if (i == 0) {
      print(a);
    } else if (i == 1) {
      print(b);
    } else {
      int siguiente = a + b;
      print(siguiente);
      a = b;
      b = siguiente;
    }
  }
}

// ================================
// EJERCICIO 17: Factorial
// ================================
void ejercicio17() {
  print('\n=== EJERCICIO 17: Factorial ===');
  
  print('Ingrese un número (0-12):');
  int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  if (numero < 0) {
    print('Error: No se puede calcular el factorial de un número negativo');
  } else if (numero > 12) {
    print('El factorial es infinito');
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print('El factorial de $numero es: $factorial');
  }
}

// ================================
// EJERCICIO 18: Ordenar tres números
// ================================
void ejercicio18() {
  print('\n=== EJERCICIO 18: Ordenar tres números ===');
  
  print('Ingrese el primer número:');
  double num1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese el segundo número:');
  double num2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('Ingrese el tercer número:');
  double num3 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  
  print('¿Cómo desea ordenar? (1. Ascendente, 2. Descendente):');
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 1;
  
  List<double> numeros = [num1, num2, num3];
  
  if (opcion == 1) {
    numeros.sort();
    print('Orden ascendente: ${numeros.join(', ')}');
  } else {
    numeros.sort((a, b) => b.compareTo(a));
    print('Orden descendente: ${numeros.join(', ')}');
  }
}

// ================================
// EJERCICIO 19: Números aleatorios Baloto
// ================================
void ejercicio19() {
  print('\n=== EJERCICIO 19: Números aleatorios Baloto ===');
  
  print('Presione Enter para generar números del Baloto:');
  stdin.readLineSync();
  
  Set<int> numeros = {};
  Random random = Random();
  
  while (numeros.length < 6) {
    numeros.add(random.nextInt(45) + 1);
  }
  
  List<int> numerosOrdenados = numeros.toList();
  numerosOrdenados.sort();
  
  print('Números del Baloto: ${numerosOrdenados.join(' - ')}');
}

// ================================
// EJERCICIO 20: Descomponer número
// ================================
void ejercicio20() {
  print('\n=== EJERCICIO 20: Descomponer número ===');
  
  print('Ingrese un número:');
  String? entrada = stdin.readLineSync();
  
  if (entrada != null && entrada.isNotEmpty) {
    int digitos = entrada.length;
    print('El número $entrada tiene $digitos dígitos');
  } else {
    print('Error: Debe ingresar un número válido');
  }
}

// ================================
// EJERCICIO 21: Serie par o impar
// ================================
void ejercicio21() {
  print('\n=== EJERCICIO 21: Serie par o impar ===');
  
  print('Ingrese el primer número:');
  int num1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('Ingrese el segundo número:');
  int num2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('¿Qué serie desea? (1. Par, 2. Impar):');
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 1;
  
  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;
  
  if (opcion == 1) {
    print('Serie de números pares:');
    for (int i = menor; i <= mayor; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  } else {
    print('Serie de números impares:');
    for (int i = menor; i <= mayor; i++) {
      if (i % 2 != 0) {
        print(i);
      }
    }
  }
}

// ================================
// EJERCICIO 22: Vector de 10 posiciones
// ================================
void ejercicio22() {
  print('\n=== EJERCICIO 22: Vector de 10 posiciones ===');
  
  List<int> vector = [];
  
  // Llenar el vector
  print('Llenando el vector:');
  for (int i = 0; i < 10; i++) {
    print('Ingrese el valor para la posición $i:');
    int valor = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    vector.add(valor);
  }
  
  // Mostrar el vector
  print('\nContenido del vector:');
  for (int i = 0; i < vector.length; i++) {
    print('Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}');
  }
}

// ================================
// EJERCICIO 23: Matriz de compañeros
// ================================
void ejercicio23() {
  print('\n=== EJERCICIO 23: Matriz de compañeros ===');
  
  List<String> encabezados = ['nombre', 'apellido', 'edad', 'estado', 'teléfono'];
  List<List<String>> matriz = [];
  
  print('Ingrese los datos de 4 compañeros:');
  
  for (int i = 0; i < 4; i++) {
    print('\nCompañero ${i + 1}:');
    List<String> fila = [];
    
    for (int j = 0; j < 5; j++) {
      print('Ingrese ${encabezados[j]}:');
      String? dato = stdin.readLineSync();
      fila.add(dato ?? '');
    }
    matriz.add(fila);
  }
  
  // Mostrar la matriz
  print('\n--- DATOS DE COMPAÑEROS ---');
  print(encabezados.join('\t\t'));
  print('-' * 60);
  
  for (int i = 0; i < matriz.length; i++) {
    print(matriz[i].join('\t\t'));
  }
}

// ================================
// EJERCICIO 24: Ejercicios 12-21 con arreglos
// ================================
void ejercicio24() {
  print('\n=== EJERCICIO 24: Ejercicios 12-21 con arreglos ===');
  
  // Ejemplo: Juego de dados con historial
  List<List<int>> historialDados = [];
  Random random = Random();
  
  for (int intento = 0; intento < 3; intento++) {
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;
    historialDados.add([dado1, dado2]);
    
    print('Lanzamiento ${intento + 1}: [$dado1, $dado2]');
    
    if (dado1 == dado2) {
      if (intento == 2) {
        print('¡Saca una ficha!');
      } else {
        print('Lanzar de nuevo');
      }
    } else {
      print('¡Lanza de nuevo!');
      break;
    }
  }
  
  print('Historial de lanzamientos:');
  for (int i = 0; i < historialDados.length; i++) {
    print('Intento ${i + 1}: ${historialDados[i]}');
  }
}

// ================================
// EJERCICIO 25: Ordenar vector
// ================================
void ejercicio25() {
  print('\n=== EJERCICIO 25: Ordenar vector ===');
  
  print('Ingrese el tamaño del vector:');
  int tamano = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  if (tamano <= 0) {
    print('Error: El tamaño debe ser mayor a cero');
    return;
  }
  
  List<int> vector = [];
  
  // Llenar el vector
  for (int i = 0; i < tamano; i++) {
    print('Ingrese el valor ${i + 1}:');
    int valor = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    vector.add(valor);
  }
  
  print('¿Cómo desea ordenar? (1. Ascendente, 2. Descendente):');
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 1;
  
  if (opcion == 1) {
    vector.sort();
    print('Vector ordenado ascendente: $vector');
  } else {
    vector.sort((a, b) => b.compareTo(a));
    print('Vector ordenado descendente: $vector');
  }
}

// ================================
// EJERCICIO 26: Juego Guayabita
// ================================
void ejercicio26() {
  print('\n=== EJERCICIO 26: Juego Guayabita ===');
  
  print('Ingrese la cantidad de jugadores:');
  int jugadores = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  if (jugadores <= 0) {
    print('Error: Debe haber al menos un jugador');
    return;
  }
  
  List<String> nombres = [];
  for (int i = 0; i < jugadores; i++) {
    print('Ingrese el nombre del jugador ${i + 1}:');
    String? nombre = stdin.readLineSync();
    nombres.add(nombre ?? 'Jugador ${i + 1}');
  }
  
  int acumulado = 0;
  Random random = Random();
  
  while (true) {
    print('\nAcumulado actual: \${acumulado}');
    
    if (acumulado == 0) {
      print('No hay dinero en el acumulado. Juego terminado.');
      break;
    }
    
    for (int i = 0; i < jugadores; i++) {
      print('\nTurno de ${nombres[i]}');
      print('Presione Enter para lanzar el dado:');
      stdin.readLineSync();
      
      int primerTiro = random.nextInt(6) + 1;
      print('Primer tiro: $primerTiro');
      
      if (primerTiro == 1 || primerTiro == 6) {
        print('¡Perdiste! Debes poner una moneda en el acumulado.');
        acumulado += 1000; // Agregar 1000 pesos al acumulado
      } else {
        print('Puedes apostar hasta \${acumulado}');
        print('¿Cuánto deseas apostar?');
        int apuesta = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        
        if (apuesta > acumulado) {
          apuesta = acumulado;
          print('Apostando el máximo: \${apuesta}');
        }
        
        print('Presione Enter para el segundo tiro:');
        stdin.readLineSync();
        
        int segundoTiro = random.nextInt(6) + 1;
        print('Segundo tiro: $segundoTiro');
        
        if (segundoTiro > primerTiro) {
          print('¡Ganaste! Te llevas \${apuesta}');
          acumulado -= apuesta;
        } else {
          print('¡Perdiste! Tu apuesta va al acumulado.');
          acumulado += apuesta;
        }
      }
      
      if (acumulado == 0) {
        print('El acumulado se agotó. Juego terminado.');
        return;
      }
    }
  }
}

// ================================
// EJERCICIO 27: Sistema de facturación
// ================================
void ejercicio27() {
  print('\n=== EJERCICIO 27: Sistema de facturación ===');
  
  // Matriz de productos: [ID, nombre, precio, tieneIVA]
  List<List<dynamic>> productos = [
    [1, 'Arroz', 2500.0, false],
    [2, 'Leche', 3200.0, false],
    [3, 'Pan', 1800.0, false],
    [4, 'Televisor', 850000.0, true],
    [5, 'Celular', 450000.0, true],
    [6, 'Aceite', 4500.0, false],
    [7, 'Azúcar', 2200.0, false],
    [8, 'Computador', 1200000.0, true],
    [9, 'Jabón', 3500.0, true],
    [10, 'Pasta', 1500.0, false]
  ];
  
  // Mostrar productos disponibles
  print('Productos disponibles:');
  for (var producto in productos) {
    print('ID: ${producto[0]}, Nombre: ${producto[1]}, Precio: \${producto[2]}, IVA: ${producto[3] ? 'Sí' : 'No'}');
  }
  
  // Matriz de factura: [item, ID, nombre, cantidad, valorUnitario, IVA, valorTotal]
  List<List<dynamic>> factura = [];
  int item = 1;
  bool continuar = true;
  
  while (continuar && item <= 10) {
    print('\nIngrese el ID del producto (1-10):');
    int id = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    var producto = productos.firstWhere((p) => p[0] == id, orElse: () => []);
    
    if (producto.isEmpty) {
      print('Producto no encontrado');
      continue;
    }
    
    print('Ingrese la cantidad:');
    int cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    if (cantidad <= 0) {
      print('La cantidad debe ser mayor a cero');
      continue;
    }
    
    double valorUnitario = producto[2];
    bool tieneIVA = producto[3];
    double subtotal = valorUnitario * cantidad;
    double iva = tieneIVA ? subtotal * 0.19 : 0.0;
    double valorTotal = subtotal + iva;
    
    factura.add([item, id, producto[1], cantidad, valorUnitario, iva, valorTotal]);
    item++;
    
    print('¿Desea agregar otro producto? (s/n):');
    String? respuesta = stdin.readLineSync();
    continuar = respuesta?.toLowerCase() == 's';
  }
  
  // Imprimir factura
  print('\n${'=' * 80}');
  print('FACTURA DE VENTA');
  print('=' * 80);
  print('Item\tID\tNombre\t\tCant\tV.Unit\t\tIVA\t\tV.Total');
  print('-' * 80);
  
  double totalFactura = 0;
  for (var fila in factura) {
    print('${fila[0]}\t${fila[1]}\t${fila[2]}\t\t${fila[3]}\t\${fila[4]}\t\t\${fila[5].toStringAsFixed(2)}\t\${fila[6].toStringAsFixed(2)}');
    totalFactura += fila[6];
  }
  
  print('-' * 80);
  print('TOTAL: \${totalFactura.toStringAsFixed(2)}');
  print('=' * 80);
}

// ================================
// EJERCICIO 28: Menú de funciones
// ================================
void ejercicio28() {
  print('\n=== EJERCICIO 28: Menú de funciones ===');
  
  print('Menú de tipos de funciones:');
  print('1. Sin parámetros y sin retorno');
  print('2. Con parámetros y sin retorno');
  print('3. Sin parámetros y con retorno');
  print('4. Con parámetros y con retorno');
  
  print('Seleccione una opción:');
  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  switch (opcion) {
    case 1:
      sumarSinParametrosSinRetorno();
      break;
    case 2:
      print('Ingrese dos números:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      sumarConParametrosSinRetorno(a, b);
      break;
    case 3:
      double resultado = sumarSinParametrosConRetorno();
      print('Resultado: $resultado');
      break;
    case 4:
      print('Ingrese dos números:');
      double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
      double resultado = sumarConParametrosConRetorno(a, b);
      print('Resultado: $resultado');
      break;
    default:
      print('Opción inválida');
  }
}

// Funciones para el ejercicio 28
void sumarSinParametrosSinRetorno() {
  print('Ingrese dos números:');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print('Resultado: ${a + b}');
}

void sumarConParametrosSinRetorno(double a, double b) {
  print('Resultado: ${a + b}');
}

double sumarSinParametrosConRetorno() {
  print('Ingrese dos números:');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  return a + b;
}

double sumarConParametrosConRetorno(double a, double b) {
  return a + b;
}

// ================================
// EJERCICIO 29: Todos los ejercicios con funciones
// ================================
void ejercicio29() {
  print('\n=== EJERCICIO 29: Todos los ejercicios con funciones ===');
  print('Este ejercicio requiere reescribir todos los ejercicios anteriores usando funciones.');
  print('Por razones de espacio, se muestra un ejemplo con el ejercicio 1:');
  
  mostrarDatosPersonalesConFuncion();
}

void mostrarDatosPersonalesConFuncion() {
  String nombre = obtenerNombre();
  String sexo = obtenerSexo();
  int edad = obtenerEdad();
  double salario = obtenerSalario();
  bool tieneVehiculo = obtenerVehiculo();
  
  mostrarDatos(nombre, sexo, edad, salario, tieneVehiculo);
}

String obtenerNombre() {
  return 'Juan Pérez';
}

String obtenerSexo() {
  return 'Masculino';
}

int obtenerEdad() {
  return 25;
}

double obtenerSalario() {
  return 2500000.50;
}

bool obtenerVehiculo() {
  return true;
}

void mostrarDatos(String nombre, String sexo, int edad, double salario, bool tieneVehiculo) {
  print('Nombre: $nombre');
  print('Sexo: $sexo');
  print('Edad: $edad años');
  print('Salario: \${salario.toStringAsFixed(2)}');
  print('Tiene vehículo: ${tieneVehiculo ? 'Sí' : 'No'}');
}

// ================================
// EJERCICIO 30: Archivos planos
// ================================
void ejercicio30() {
  print('\n=== EJERCICIO 30: Archivos planos ===');
  print('Este ejercicio requiere manejo de archivos planos.');
  print('En un entorno real, se utilizarían las librerías dart:io para leer y escribir archivos.');
  print('Ejemplo de estructura para guardar datos del juego Guayabita:');
  
  // Simulación de escritura en archivo
  List<String> datosJuego = [
    'Jugador,Puntos,Fecha',
    'Juan,1500,2024-01-15',
    'María,2300,2024-01-15',
    'Pedro,800,2024-01-15'
  ];
  
  print('Datos que se guardarían en archivo:');
  for (String linea in datosJuego) {
    print(linea);
  }
  
  print('\nEjemplo de estructura para productos:');
  List<String> datosProductos = [
    'ID,Nombre,Precio,IVA',
    '1,Arroz,2500.0,false',
    '2,Leche,3200.0,false',
    '3,Televisor,850000.0,true'
  ];
  
  for (String linea in datosProductos) {
    print(linea);
  }
  
  print('\nNota: En un entorno real se usarían File, FileReader y FileWriter de dart:io');
}

// ================================
// FUNCIONES AUXILIARES
// ================================

// Función para validar entrada numérica
double validarNumero(String mensaje) {
  while (true) {
    print(mensaje);
    String? entrada = stdin.readLineSync();
    double? numero = double.tryParse(entrada ?? '');
    if (numero != null) {
      return numero;
    }
    print('Error: Ingrese un número válido');
  }
}

// Función para validar entrada entera
int validarEntero(String mensaje) {
  while (true) {
    print(mensaje);
    String? entrada = stdin.readLineSync();
    int? numero = int.tryParse(entrada ?? '');
    if (numero != null) {
      return numero;
    }
    print('Error: Ingrese un número entero válido');
  }
}

// Función para validar entrada de texto
String validarTexto(String mensaje) {
  while (true) {
    print(mensaje);
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.isNotEmpty) {
      return entrada;
    }
    print('Error: Ingrese un texto válido');
  }
}

// Función para pausar y esperar entrada del usuario
void pausar() {
  print('\nPresione Enter para continuar...');
  stdin.readLineSync();
}