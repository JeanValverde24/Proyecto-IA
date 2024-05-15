import 'package:flutter/material.dart';

class GadgetsAnalizadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gadgets Analizados'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/gadget1Details');
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Nombre del Gadget 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón del segundo gadget
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Nombre del Gadget 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón del tercer gadget
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Nombre del Gadget 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón del cuarto gadget
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Nombre del Gadget 4',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón del quinto gadget
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Nombre del Gadget 5',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
