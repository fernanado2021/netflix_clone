import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => LoginScreen(),
        '/registro': (context) => RegistroScreen(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Free')),
      body: Inicio(context),
    );
  }
}

Widget Inicio(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://img.freepik.com/foto-gratis/collage-fondo-pelicula_23-2149876024.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Bienvenido a Movie Free',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Esta aplicación te ofrece una experiencia increíble para disfrutar de tus películas favoritas',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/registro');
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
            child: const Text(
              'Registrarse',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
      ),
      body: const Center(
        child: Text('Aquí va el formulario de inicio de sesión'),
      ),
    );
  }
}

class RegistroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrarse en Movie Free'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/foto-gratis/collage-fondo-pelicula_23-2149876024.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Crear una cuenta',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(color: Colors.white), // Color del texto del campo de entrada
                  decoration: InputDecoration(
                    labelText: 'Nombre de usuario',
                    labelStyle: TextStyle(color: Colors.white), // Color del texto de la etiqueta
                    enabledBorder: OutlineInputBorder( // Borde cuando el campo no está enfocado
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder( // Borde cuando el campo está enfocado
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Aquí iría la lógica para registrar al usuario
                  },
                  style: ElevatedButton.styleFrom( 
                    elevation: 5, 
                    shape: RoundedRectangleBorder( 
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), 
                  ),
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
