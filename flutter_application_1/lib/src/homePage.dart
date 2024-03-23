import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tipo de aprendizaje',
            textAlign: TextAlign.center, // Alinea el texto al centro
          ),
          centerTitle: true, // Centra el texto en la AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el primer botón
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Ajusta el tamaño del botón
                  shape: RoundedRectangleBorder( // Ajusta la forma del botón
                    borderRadius: BorderRadius.circular(10), // Ajusta la redondez de las esquinas
                  ),
                    backgroundColor: const Color.fromARGB(255, 152, 154, 155), // Cambia el color del botón aquí
                ),
                child: Text('Aprendizaje rapido', style: TextStyle(fontSize: 20)), // Ajusta el tamaño del texto
              ),
              SizedBox(height: 20), // Espacio entre los botones
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el segundo botón
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Ajusta el tamaño del botón
                  shape: RoundedRectangleBorder( // Ajusta la forma del botón
                    borderRadius: BorderRadius.circular(10), // Ajusta la redondez de las esquinas
                  ),
                   backgroundColor: const Color.fromARGB(255, 152, 154, 155), // Cambia el color del botón aquí
                ),
                child: Text('Aprendizaje clasico', style: TextStyle(fontSize: 20)), // Ajusta el tamaño del texto
              ),
              SizedBox(height: 20), // Espacio entre los botones
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el tercer botón
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Ajusta el tamaño del botón
                  shape: RoundedRectangleBorder( // Ajusta la forma del botón
                    borderRadius: BorderRadius.circular(10), // Ajusta la redondez de las esquinas
                  ),
                    backgroundColor: const Color.fromARGB(255, 152, 154, 155), // Cambia el color del botón aquí
                ),
                child: Text('Aprendizaje lento', style: TextStyle(fontSize: 20)), // Ajusta el tamaño del texto
              ),
            ],
          ),
        ),
      ),
    );
  }
}
