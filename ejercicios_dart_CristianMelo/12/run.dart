import 'dart:math';

void main() {
  print("=== JUEGO DE DADOS 🎲 ===");
  print("Si sacas dobles tres veces seguidas, ¡ganas una ficha!\n");

  int tiros = 0;
  bool sigueIntentando = true;

  while (tiros < 3 && sigueIntentando) {
    tiros++;

    int resultadoDadoA = Random().nextInt(6) + 1;
    int resultadoDadoB = Random().nextInt(6) + 1;

    print("Tiro $tiros → Dado A: $resultadoDadoA | Dado B: $resultadoDadoB");

    if (resultadoDadoA != resultadoDadoB) {
      sigueIntentando = false;
      print("No fueron iguales. ¡Intenta de nuevo!");
    } else if (tiros < 3) {
      print("¡Dobles! Lanza otra vez...");
    }
  }

  if (sigueIntentando) {
    print(" ¡Lograste tres dobles seguidos! ¡Saca una ficha!");
  }
}
