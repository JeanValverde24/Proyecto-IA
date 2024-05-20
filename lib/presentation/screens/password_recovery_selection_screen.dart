import 'package:flutter/material.dart';
import 'package:moviles_proyecto/presentation/widgets/animated_button.dart';

class PasswordRecoverySelectionScreen extends StatelessWidget {
  const PasswordRecoverySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/forms.jpg', // Asegúrate de que el fondo esté en la carpeta assets
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.white.withOpacity(0.8),
                  child: const Text(
                    'Seleccione el método para restablecer su contraseña',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                AnimatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/email_recovery');
                  },
                  label: 'Correo',
                  icon: const Icon(Icons.email, size: 24),
                  backgroundColor: Colors.orange,
                  textColor: Colors.white,
                ),
                const SizedBox(height: 20),
                AnimatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sms_recovery');
                  },
                  label: 'Número celular',
                  icon: const Icon(Icons.sms, size: 24),
                  backgroundColor: Colors.orange,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
