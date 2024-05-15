import 'package:flutter/material.dart';

import 'dart:async'; // Importación de la biblioteca de temporizador

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/reportPage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cargando...'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
