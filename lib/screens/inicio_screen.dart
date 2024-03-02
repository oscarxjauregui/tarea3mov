import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import 'package:lottie/lottie.dart';

class InicioScreen extends StatelessWidget {
  final String nombre;
  final String email;
  final File imageFile; // Nuevo parámetro para recibir el imageFile
  const InicioScreen(this.nombre, this.email, this.imageFile, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                // Mostrar la imagen del imageFile
                backgroundImage: FileImage(imageFile),
              ),
              accountName: Text(nombre),
              accountEmail: Text(email),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Tarea 3'),
              subtitle: Text('Los tenis'),
              trailing: Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(context, '/tarea3'),
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Lottie.network(
            'https://lottie.host/87c136ef-c848-4784-b13b-0d66e3f48c0c/OLTq4GIPZY.json',
            height: 200,
            width: 200),
      ),
    );
  }
}
