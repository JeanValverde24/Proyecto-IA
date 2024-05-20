import '../../domain/repositories/user_repository.dart';
import '../../domain/entities/user.dart';

class RegisterUser {
  final UserRepository userRepository;

  RegisterUser(this.userRepository);

  Future<void> call({
    required String usuario,
    required String contrasena,
    required String correo,
    required String numero,
    required String pais,
  }) async {
    await userRepository.addUser(User(
      usuario: usuario,
      contrasena: contrasena,
      correo: correo,
      numero: numero,
      pais: pais,
    ));
  }
}
