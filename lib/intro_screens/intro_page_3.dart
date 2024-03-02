import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 400,
              child: Image.asset('assets/nike.png'), 
            ),
            Text(
              'Nike',
              style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}