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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Page View
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
              ],
            ),
          ),
          SmoothPageIndicator(
            // -------------Indicador--------------
            controller: _controller,
            count: 2,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors
                  .amberAccent, //------------COLOR DEL SELECTOR-----------------
              dotColor: Color.fromARGB(255, 224, 84,
                  42), //----------------COLOR DE LA SIGUIENTE PAGINA------------
              dotHeight: 15,
              dotWidth: 15,
              spacing: 16,
            ),
          ),
        ],
      ),
    );
  }
}
