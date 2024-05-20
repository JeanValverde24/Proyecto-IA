class User {
  final String usuario;
  final String contrasena;
  final String correo;
  final String numero;
  final String pais;

  User({
    required this.usuario,
    required this.contrasena,
    required this.correo,
    required this.numero,
    required this.pais,
  });

  Map<String, dynamic> toMap() {
    return {
      'Usuario': usuario,
      'Contrasena': contrasena,
      'Correo': correo,
      'Numero': numero,
      'Pais': pais,
    };
  }
}
