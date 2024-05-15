import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'salir') {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'salir',
                  child: Text('Salir'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Aqui el programa identificara el dispositivo del usuario mostrando modelo, marca, bateria y otras especificaciones',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Image.asset('assets/device_image.png'), // Reemplaza 'device_image.png' con la ruta de tu imagen
            SizedBox(height: 20),
            DropdownButton<String>(
              items: [
                DropdownMenuItem(
                  child: Text('Opción 1'),
                  value: 'opcion1',
                ),
                DropdownMenuItem(
                  child: Text('Opción 2'),
                  value: 'opcion2',
                ),
                DropdownMenuItem(
                  child: Text('Opción 3'),
                  value: 'opcion3',
                ),
              ],
              onChanged: (value) {
                // Acción al cambiar de opción en el combo list
              },
              hint: Text('Selecciona una opción'),
              value: null,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loadingPage');
              },
              child: Text('Analizar'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Gadgets analizados'),
              onTap: () {
                Navigator.pushNamed(context, '/gadgetsAnalizados');
              },
            ),
            ListTile(
              title: Text('Gadgets recomendados'),
              onTap: () {
                // Acción al seleccionar 'Gadgets recomendados' en el menú
              },
            ),
            ListTile(
              title: Text('Gadgets a evitar'),
              onTap: () {
                // Acción al seleccionar 'Gadgets a evitar' en el menú
              },
            ),
            ListTile(
              title: Text('Gadgets personales'),
              onTap: () {
                // Acción al seleccionar 'Gadgets personales' en el menú
              },
            ),
            ListTile(
              title: Text('Informe de gadgets'),
              onTap: () {
                // Acción al seleccionar 'Informe de gadgets' en el menú
              },
            ),
          ],
        ),
      ),
    );
  }
}
