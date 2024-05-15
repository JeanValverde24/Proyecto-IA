import 'package:flutter/material.dart';
import 'package:proyecto/screens/home/gadget_details_page.dart';
import 'package:proyecto/screens/home/gadgets_analizados_page.dart';
import 'screens/home/home_page.dart';
import 'screens/auth/login_page.dart';
import 'screens/utils/loading_page.dart';
import 'screens/utils/report_page.dart';

void main() {
  runApp(MyApp());
}
// Resto del código irá aquí

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/gadgetsAnalizados': (context) => GadgetsAnalizadosPage(),
        '/gadget1Details': (context) => GadgetDetailsPage(),
        '/loadingPage': (context) => LoadingPage(),
        '/reportPage': (context) => ReportPage(),
      },
    );
  }
}
