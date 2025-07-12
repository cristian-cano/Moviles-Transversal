import 'dart:io';

// Clase para representar un producto
class Producto {
  String id;
  String nombre;
  double precio;
  bool tieneIVA;

  Producto(this.id, this.nombre, this.precio, this.tieneIVA);
}

void main() {
  List<Producto> productos = [
    Producto('P01', 'Arroz', 4000, true),
    Producto('P02', 'Leche', 3500, false),
    Producto('P03', 'Azúcar', 2500, true),
    Producto('P04', 'Huevos', 6000, false),
    Producto('P05', 'Aceite', 8000, true),
    Producto('P06', 'Sal', 1200, false),
    Producto('P07', 'Café', 10000, true),
    Producto('P08', 'Pan', 2000, false),
    Producto('P09', 'Queso', 7000, true),
    Producto('P10', 'Jabón', 1500, true),
  ];

  List<List<String>> factura = [];

  int item = 1;
  double totalFactura = 0.0;

  print("Lista de productos disponibles:");
  print("ID\tNombre\t\tPrecio\tIVA");
  for (var p in productos) {
    print("${p.id}\t${p.nombre.padRight(10)}\t\$${p.precio.toStringAsFixed(2)}\t${p.tieneIVA ? 'Sí' : 'No'}");
  }

  while (item <= 10) {
    String? id;
    Producto? productoSeleccionado;

    do {
      stdout.write("\nDigite el ID del producto que desea llevar: ");
      id = stdin.readLineSync();
      if (id == null || id.trim().isEmpty) {
        print("Debe ingresar un ID.");
        continue;
      }
      id = id.toUpperCase();
      productoSeleccionado = productos.firstWhere(
        (p) => p.id == id,
        orElse: () => Producto('', '', 0.0, false),
      );
      if (productoSeleccionado.id == '') {
        print("ID de producto no encontrado. Intente de nuevo.");
        productoSeleccionado = null;
      }
    } while (productoSeleccionado == null);

    int cantidad = 0;
    while (true) {
      stdout.write("¿Cuántas unidades desea llevar de ${productoSeleccionado.nombre}?: ");
      String? entrada = stdin.readLineSync();
      if (entrada == null || entrada.trim().isEmpty) {
        print("Debe ingresar una cantidad.");
        continue;
      }
      try {
        cantidad = int.parse(entrada);
        if (cantidad <= 0) {
          print("La cantidad debe ser mayor que cero.");
          continue;
        }
        break;
      } catch (_) {
        print("Cantidad inválida. Intente de nuevo.");
      }
    }

    double iva = productoSeleccionado.tieneIVA
        ? productoSeleccionado.precio * cantidad * 0.19
        : 0.0;
    double total = productoSeleccionado.precio * cantidad + iva;

    factura.add([
      item.toString(),
      productoSeleccionado.id,
      productoSeleccionado.nombre,
      cantidad.toString(),
      productoSeleccionado.precio.toStringAsFixed(2),
      iva.toStringAsFixed(2),
      total.toStringAsFixed(2),
    ]);

    totalFactura += total;

    String? continuar;
    while (true) {
      stdout.write("¿Desea llevar otro producto? (s/n): ");
      continuar = stdin.readLineSync();
      if (continuar != null &&
          (continuar.toLowerCase() == 's' || continuar.toLowerCase() == 'n')) {
        break;
      }
      print("Respuesta inválida. Debe ser 's' o 'n'.");
    }

    if (continuar.toLowerCase() != 's') break;
    item++;
  }

  print("\nFactura de compra:");
  print("Ítem\tID\tNombre\t\tCant\tUnit\tIVA\t\tTotal");
  for (var fila in factura) {
    print("${fila[0]}\t${fila[1]}\t${fila[2].padRight(10)}\t${fila[3]}\t\$${fila[4]}\t\$${fila[5]}\t\$${fila[6]}");
  }
  print("-----------------------------------------------");
  print("TOTAL A PAGAR: \$${totalFactura.toStringAsFixed(2)}");
}
