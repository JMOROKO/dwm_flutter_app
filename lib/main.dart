import 'package:dwm_flutter_app/pages/chat.page.dart';
import 'package:dwm_flutter_app/pages/counter.page.dart';
import 'package:dwm_flutter_app/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/counter": (context) => CounterPage(),
        "/chat": (context) => ChatPage(),
      },
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 25,
          ),
        ),
        indicatorColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          //identification de la couleur de base de l'application
          seedColor: Colors.teal,
          primary: Colors.teal,
        ),
      ),
      //permet de définir la page principal de l'application
      //home: HomePage(), mis en commentaire car il est définit dans les routes
    );
  }
}
