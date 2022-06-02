//import 'dart:js';

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       SizedBox(
         height: 20,
       ),
       
       Row(//-----------------------ROW PARA LOS INPUT--------------------------
         children: [
           Container(
             width: MediaQuery.of(context).size.width * 0.5,
             child: _inputName(),
           ),
           Container(
             width: MediaQuery.of(context).size.width* 0.5,
             child: _inputGPSnumber(),
           ),
         ],
       )
     ],   
    );
  }

  Container _inputName() { //-----------------------------------------FORM FIELD----------------------
    return Container( decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       border: Border.all(color: Colors.blueGrey)),
       padding: const EdgeInsets.symmetric(horizontal: 15),
       margin: const EdgeInsets.symmetric(horizontal: 15),
       child: TextFormField(
         style: TextStyle(fontSize: 20, color: Colors.white),
         decoration: const InputDecoration(
           hintText: "Vehículo.",
          //fillColor: Color.fromARGB(255, 55, 86, 102),    
         // filled: true,     
           border: InputBorder.none,
         
         ),
       ),

      );
  }
  Container _inputGPSnumber() {
    return Container( decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       border: Border.all(color: Colors.blueGrey)),
       padding: const EdgeInsets.symmetric(horizontal: 15),
       margin: const EdgeInsets.symmetric(horizontal: 15),
       child: TextFormField(
         keyboardType: TextInputType.number,
         style: TextStyle(fontSize: 20),
         decoration: const InputDecoration(
            hintText: "Número GPS.",
            border: InputBorder.none),
       ),

      );
  }
}
