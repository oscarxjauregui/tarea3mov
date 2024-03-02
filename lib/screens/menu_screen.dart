import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import 'package:lottie/lottie.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Container(
                alignment: Alignment.topCenter,
                height: 600,
                width: MediaQuery.of(context).size.width * .9,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width:200,
                      child: Align(
                          alignment: Alignment.center,
                          child: Lottie.network('https://lottie.host/3985b64b-c61a-459f-89fa-49a8c0b1eb40/Ek8uwpqyNC.json'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isLoading = !isLoading;
                        });
                        Future.delayed(new Duration(microseconds: 5000), () {
                          Navigator.pushNamed(context, '/registro')
                              .then((value) {
                            setState(() {
                              isLoading = !isLoading;
                            });
                          });
                        });
                      },
                      child: Text('Registrarse'),
                    ),
                    /*SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Iniciar Sesion'),
                    ),*/
                  ],
                ),
              ),
            ),
            isLoading
                ? const Positioned(
                    top: 260,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : Container()
          ],
        ),
      ),
    );
  }
}




/*import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width * .9,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isLoading = !isLoading;
                        });
                        Future.delayed(new Duration(microseconds: 5000), () {
                          Navigator.pushNamed(context, '/registro')
                              .then((value) {
                            setState(() {
                              isLoading = !isLoading;
                            });
                          });
                        });
                      },
                      child: Text('Registrarse'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Iniciar Sesion'),
                    ),
                  ],
                ),
              ),
            ),
            isLoading
                ? const Positioned(
                    top: 260,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : Container()
          ],
        ),
      ),
    );
  }
}
*/