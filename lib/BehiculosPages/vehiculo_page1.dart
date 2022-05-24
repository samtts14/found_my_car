import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(//----------------------CON SAFE AREA-------------------
        //padding: const EdgeInsets.all(20.0),
        child: Container(color: Colors.red),
      ),
    );
  }
}