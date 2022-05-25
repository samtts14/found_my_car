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
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      effect: WormEffect(),
                      onDotClicked: (Index) => _controller.animateToPage(Index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCubic)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
