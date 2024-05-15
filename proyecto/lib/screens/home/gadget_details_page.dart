import 'package:flutter/material.dart';

class GadgetDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gadget 1'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Gadget Original',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/original_gadget_image.png'), // Reemplaza 'original_gadget_image.png' con la ruta de tu imagen
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Gadget Analizado',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/analyzed_gadget_image.png'), // Reemplaza 'analyzed_gadget_image.png' con la ruta de tu imagen
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Sugerencias de acuerdo a la comparación de las métricas de ambos gadgets. Reporte',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
