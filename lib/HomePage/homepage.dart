import 'package:flutter/material.dart';
import 'package:found_my_car/BehiculosPages/vehiculo_page1.dart';
import 'package:found_my_car/BehiculosPages/vehiculo_page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Page View
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const[
                Page1(),
                Page2(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller, 
            count: 2,
            effect: WormEffect(
              activeDotColor: Colors.blue,//------------COLOR DEL SELECTOR-----------------
              dotColor: Colors.brown,//----------------COLOR DE LA SIGUIENTE PAGINA------------
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
            ),
          ),
        ],
      ),
    );
  }
}