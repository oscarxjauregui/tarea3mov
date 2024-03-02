import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 400,
              child: Image.asset('assets/vans.png'), 
            ),
            Text(
              'Vans',
              style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}