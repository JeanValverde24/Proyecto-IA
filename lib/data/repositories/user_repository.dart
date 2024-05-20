import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final FirebaseFirestore firestore;

  UserRepository(this.firestore);

  Future<void> addUser({
    required String usuario,
    required String contrasena,
    required String correo,
    required String numero,
    required String pais,
  }) async {
    try {
      await firestore.collection('Usuarios').add({
        'Usuario': usuario,
        'Contrasena': contrasena,
        'Correo': correo,
        'Numero': numero,
        'Pais': pais,
      });
    } catch (e) {
      throw Exception('Error al registrar usuario: $e');
    }
  }
}
