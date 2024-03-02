import 'package:flutter/material.dart';
import 'package:practica2/screens/menu_screen.dart';
import 'package:practica2/screens/onboarding_screen.dart';
import 'package:practica2/screens/registro_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MenuScreen(),
      //home: MenuScreen(),
      routes: {
        "/registro": (BuildContext context) => RegistroScreen(),
        "/menu": (BuildContext context) => MenuScreen(),
        "/tarea3": (BuildContext context) => OnBoardingScreen(),
        //"/inicio": (BuildContext context) => InicioScreen()
      },
    );
  }
}
