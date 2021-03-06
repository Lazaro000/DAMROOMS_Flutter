// string dni
// string nombre
// string apellidos
// string direccion
// int telefono

// ignore_for_file: avoid_function_literals_in_foreach_calls, unnecessary_null_comparison

class Clientes {
  List<Cliente> clientes = [];

  Clientes();

  Clientes.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    jsonList.forEach((element) {
      final cliente = Cliente.fromJsonMap(element);
      clientes.add(cliente);
    });
  }
}

class Cliente {
  String? dni;
  String? nombre;
  String? apellidos;
  String? direccion;
  int? telefono;

  Cliente(
      {required this.dni,
      required this.nombre,
      required this.apellidos,
      required this.direccion,
      required this.telefono});

  Cliente.fromJsonMap(Map<String, dynamic> json) {
    dni = json['dni'];
    nombre = json['nombre'];
    apellidos = json['apellidos'];
    direccion = json['direccion'];
    telefono = json['teleono'];
  }

  factory Cliente.fromJson(dynamic json) {
    return Cliente(
      dni: json['dni'] as String,
      nombre: json['nombre'] as String,
      apellidos: json['apellidos'] as String,
      direccion: json['direccion'] as String,
      telefono: json['telefono'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'dni': dni,
        'nombre': nombre,
        'apellidos': apellidos,
        'direccion': direccion,
        'telefono': telefono,
      };
}
