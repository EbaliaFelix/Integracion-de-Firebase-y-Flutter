import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Importar para la inicialización de Firebase
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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Ruta de la imagen
                fit: BoxFit.cover, // Hace que la imagen cubra toda la pantalla
              ),
            ),
          ),
          // Contenido encima de la imagen (nombre de la app, mensaje y verificación de Firebase)
          Positioned(
            top: 50, // Espacio desde la parte superior de la pantalla
            left: 20, // Espacio desde el borde izquierdo
            right: 20, // Espacio desde el borde derecho
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Alineación centrada
              children: [
                // Nombre de la aplicación
                Text(
                  'Cine Stream', // Nombre de la app
                  style: TextStyle(
                    fontSize: 42, // Tamaño de la fuente
                    color: Colors.white, // Color del texto (blanco)
                    fontWeight: FontWeight.bold, // Negrita
                    fontFamily: 'Courier New', // Fuente
                  ),
                ),
                SizedBox(height: 20), // Espacio entre el nombre y el mensaje
                // Mensaje de bienvenida
                Text(
                  '¡Bienvenido a Cine Stream! Nos emociona tenerte con nosotros, aquí encontrarás una gran variedad de películas, desde clásicos hasta lo más nuevo. Explora nuestro catálogo y déjate sorprender. ¡Es hora de disfrutar del cine! ¿Qué película quieres ver hoy?',
                  style: TextStyle(
                    fontSize: 19, // Tamaño de la fuente
                    color: Colors.white, // Color del texto (blanco)
                    fontWeight: FontWeight.normal, // Estilo normal
                  ),
                  textAlign: TextAlign.center, // Centrado del mensaje
                ),
                SizedBox(height: 40), // Espacio para separar el mensaje
                // Verificación de inicialización de Firebase
                Text(
                  'Firebase ha sido inicializado correctamente.',
                  style: TextStyle(
                    fontSize: 20, // Tamaño de la fuente
                    fontWeight: FontWeight.bold, // Negrita
                    color: Colors.green, // Color verde para indicar éxito
                  ),
                  textAlign: TextAlign.center, // Centrado del texto
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
