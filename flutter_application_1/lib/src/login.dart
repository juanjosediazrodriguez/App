import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importa el paquete url_launcher
import 'homePage.dart';


void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    print('Username: $username');
    print('Password: $password');

    // Lógica de autenticación ficticia
    if (username == 'usuario' && password == 'eafit') {
      // Si las credenciales son correctas, puedes navegar a la siguiente pantalla o realizar cualquier otra acción.
      // En este ejemplo, simplemente limpiamos los campos de texto después del inicio de sesión.
      _usernameController.clear();
      _passwordController.clear();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Inicio de sesión exitoso'),
        duration: Duration(seconds: 2),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Credenciales incorrectas'),
        duration: Duration(seconds: 2),
      ));
    }
  }


  void _goToForgotPasswordPage() async {
  const url = 'https://servicios.eafit.edu.co/psp/FGTPASS/EMPLOYEE/SA/c/MAINTAIN_SECURITY.EMAIL_PSWD.GBL?languageCd=ESP'; // URL de restablecimiento de contraseña
  if (await canLaunch(url)) { // Pasar la URL como argumento a canLaunch
    await launch(url);
  } else {
    throw 'No se pudo abrir la URL: $url';
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de sesión'),
      ),
      body: Padding(
        padding: EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(
              onPressed: _goToForgotPasswordPage, // Cambia el nombre del método
              child: Text('¿Olvidaste tu contraseña?'),
            ),
          ],
        ),
      ),
    );
  }
}
