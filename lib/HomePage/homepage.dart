import 'package:flutter/material.dart';
import 'package:found_my_car/VehiculosPages/vehiculo_page1.dart';
import 'package:found_my_car/VehiculosPages/vehiculo_page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        /*actions: [
          IconButton(
        icon: Image.asset('assets/Images/logoCF'),
        onPressed: () {},
      ),
        ],  */    
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        elevation: 0,
        backgroundColor: Colors.blueGrey[900],
      ),
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
            mainAxisAlignment: MainAxisAlignment.end,//posicion del dot
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: SmoothPageIndicator(//---------------------INDICADOR----------------------------
                      controller: _controller,
                      count: 2,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Color.fromARGB(255, 255, 106, 7),
                        dotColor: Colors.amber,
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 10
                      ),
                    ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
