void main() {
  const String persona = "Cristian Melo ";
  const String genero = "Masculino";
  const int edadPersona = 18;
  const double sueldo = 6540457.62;
  const bool vehiculoPropio = true;
  const String claseVehiculo = "moto";

  print("Nombre: ${persona}");
  print("Sexo: ${genero}");
  print("Edad: ${edadPersona} años");
  print("Salario: \$${sueldo.toStringAsFixed(2)}");
  print("¿Tiene vehículo? ${vehiculoPropio ? 'Sí' : 'No'}");
  print("Tipo de vehículo: ${claseVehiculo}");
}