import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Asegúrate de importar firebase_core
import 'firebase_options.dart'; // Este es el archivo generado automáticamente para las opciones de Firebase

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializar Firebase con las opciones generadas para la plataforma correspondiente
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Pantalla principal después de la inicialización
    );
  }
}

// Pantalla principal
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Container con texto
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Este es un contenedor',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),

            // Row con ícono y texto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.star, size: 40, color: Colors.orange),
                SizedBox(width: 10),
                Text('Star', style: TextStyle(fontSize: 18)),
              ],
            ),
            SizedBox(height: 20),

            // Column con texto
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Encabezado', style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text('Subtítulo', style: TextStyle(fontSize: 18)),
              ],
            ),
            SizedBox(height: 20),

            // Stack con Container e ícono encima
            Stack(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Icon(Icons.location_on, size: 50, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
