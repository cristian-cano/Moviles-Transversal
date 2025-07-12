import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('\n=== MENÚ DE OPERACIONES MATEMÁTICAS ===');
    print('1. Sumar dos números');
    print('2. Restar dos números');
    print('3. Multiplicar dos números');
    print('4. Dividir dos números');
    print('5. Calcular módulo (residuo)');
    print('6. Elevar al cuadrado');
    print('7. Calcular raíz cuadrada');
    print('8. Calcular potencia');
    print('9. Calcular porcentaje');
    print('10. Generar número aleatorio');
    print('0. Salir');
    stdout.write('Seleccione una opción: ');
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (opcion == 0) {
      print('Gracias por usar el programa. ¡Hasta pronto!');
      break;
    }

    double valorA, valorB, resultadoFinal;

    switch (opcion) {
      case 1:
        valorA = solicitarNumero('Ingrese el primer número: ');
        valorB = solicitarNumero('Ingrese el segundo número: ');
        resultadoFinal = valorA + valorB;
        print('Resultado: $resultadoFinal');
        break;
      case 2:
        valorA = solicitarNumero('Ingrese el primer número: ');
        valorB = solicitarNumero('Ingrese el segundo número: ');
        resultadoFinal = valorA - valorB;
        print('Resultado: $resultadoFinal');
        break;
      case 3:
        valorA = solicitarNumero('Ingrese el primer número: ');
        valorB = solicitarNumero('Ingrese el segundo número: ');
        resultadoFinal = valorA * valorB;
        print('Resultado: $resultadoFinal');
        break;
      case 4:
        valorA = solicitarNumero('Ingrese el dividendo: ');
        valorB = solicitarNumero('Ingrese el divisor: ');
        if (valorB == 0) {
          print('Error: No se puede dividir por cero.');
        } else {
          resultadoFinal = valorA / valorB;
          print('Resultado: $resultadoFinal');
        }
        break;
      case 5:
        valorA = solicitarNumero('Ingrese el primer número: ');
        valorB = solicitarNumero('Ingrese el segundo número: ');
        if (valorB == 0) {
          print('Error: No se puede calcular el módulo con divisor cero.');
        } else {
          resultadoFinal = valorA % valorB;
          print('Resultado: $resultadoFinal');
        }
        break;
      case 6:
        valorA = solicitarNumero('Ingrese el número: ');
        resultadoFinal = pow(valorA, 2).toDouble();
        print('El cuadrado de $valorA es $resultadoFinal');
        break;
      case 7:
        valorA = solicitarNumero('Ingrese el número: ');
        if (valorA < 0) {
          print('Error: No se puede calcular la raíz cuadrada de un número negativo.');
        } else {
          resultadoFinal = sqrt(valorA);
          print('La raíz cuadrada de $valorA es $resultadoFinal');
        }
        break;
      case 8:
        valorA = solicitarNumero('Ingrese la base: ');
        valorB = solicitarNumero('Ingrese el exponente: ');
        resultadoFinal = pow(valorA, valorB).toDouble();
        print('$valorA elevado a la $valorB es $resultadoFinal');
        break;
      case 9:
        valorA = solicitarNumero('Ingrese el número base: ');
        valorB = solicitarNumero('¿Qué porcentaje desea calcular?: ');
        resultadoFinal = valorA * (valorB / 100);
        print('$valorB% de $valorA es $resultadoFinal');
        break;
      case 10:
        valorA = solicitarNumero('Ingrese el límite inferior: ');
        valorB = solicitarNumero('Ingrese el límite superior: ');
        if (valorB <= valorA) {
          print('Error: El límite superior debe ser mayor que el inferior.');
        } else {
          int aleatorio = valorA.toInt() + Random().nextInt(valorB.toInt() - valorA.toInt() + 1);
          print('Número aleatorio entre ${valorA.toInt()} y ${valorB.toInt()}: $aleatorio');
        }
        break;
      default:
        print('Opción inválida. Intente de nuevo.');
    }
  }
}

double solicitarNumero(String mensaje) {
  stdout.write(mensaje);
  return double.tryParse(stdin.readLineSync() ?? '') ?? 0;
}
