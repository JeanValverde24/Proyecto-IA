import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../application/use_cases/sign_in_with_google.dart';
import '../../infrastructure/repositories/auth_repository_impl.dart';
import '../widgets/animated_button.dart';
import 'dashboard_screen.dart'; // Importa el archivo DashboardScreen
import 'package:logger/logger.dart';

final logger = Logger();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepositoryImpl(FirebaseAuth.instance, GoogleSignIn());
    final signInWithGoogle = SignInWithGoogle(authRepository);

    logger.d("Building LoginScreen");

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/fondo.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          'assets/mascota.jpg',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                      ),
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
                        filled: true,
                        fillColor: Colors.white54,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white, width: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                      ),
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
                        filled: true,
                        fillColor: Colors.white54,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white, width: 1.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedButton(
                      onPressed: () {
                        logger.d("Login button pressed");
                        // Acción del botón de inicio de sesión
                        // Redirige a DashboardScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashboardScreen(username: 'Nombre del usuario')),
                        );
                      },
                      label: 'Login',
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      color: Colors.black.withOpacity(0.7),
                      child: GestureDetector(
                        onTap: () {
                          logger.d("Crear Cuenta tapped");
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text(
                          'Crear Cuenta',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      color: Colors.black.withOpacity(0.7),
                      child: GestureDetector(
                        onTap: () {
                          logger.d("Olvidaste tu contraseña tapped");
                          // Acción del enlace Olvidaste tu contraseña?
                        },
                        child: const Text(
                          'Olvidaste tu contraseña?',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedButton(
                      onPressed: () async {
                        logger.d("Login with Google button pressed");
                        try {
                          final user = await signInWithGoogle();
                          if (user != null) {
                            logger.d('Nombre: ${user.displayName}');
                            logger.d('Email: ${user.email}');
                            // Navega a la siguiente pantalla o maneja el inicio de sesión exitoso
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DashboardScreen(username: user.displayName ?? '')),
                            );
                          } else {
                            logger.d('Inicio de sesión con Google cancelado o fallido');
                          }
                        } catch (e) {
                          logger.e('Error al intentar iniciar sesión con Google: $e');
                        }
                      },
                      label: 'Login with Google',
                      icon: Image.asset(
                        'assets/google_logo.png',
                        height: 24,
                        width: 24,
                      ),
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
