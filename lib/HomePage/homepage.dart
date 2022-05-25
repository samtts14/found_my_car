import 'package:flutter/material.dart';
import 'package:found_my_car/VehiculosPages/vehiculo_page1.dart';
import 'package:found_my_car/VehiculosPages/vehiculo_page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: PageView(
          controller: _controller,
                children:  [
                  Page1(),
                  Page2(),
             ],
          ),
          top: true,
          bottom: true,
          left: true,
          right: true,
      ),
    );
  }
}