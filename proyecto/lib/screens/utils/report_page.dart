import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reporte del Gadget Analizado'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Subtítulo de Gadget Original',
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
              'Subtítulo de Gadget Analizado',
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
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de guardar
                },
                child: Text('Guardar'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de borrar
                },
                child: Text('Borrar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
