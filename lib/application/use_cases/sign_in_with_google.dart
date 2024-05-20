import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/repositories/auth_repository.dart';

class SignInWithGoogle {
  final AuthRepository authRepository;

  SignInWithGoogle(this.authRepository);

  Future<User?> call() async {
    final UserCredential userCredential = await authRepository.signInWithGoogle();
    return userCredential.user;
  }
}
