import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(10),//Tamano del padding en cada pantalla
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
        //    height: 495,
            color: Colors.red[400],
          ),
        ),
      ),
    );
  }
}