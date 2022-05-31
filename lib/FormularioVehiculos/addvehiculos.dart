import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class AddVehiculo extends StatefulWidget {
  @override
  _AddVehiculoState createState() => _AddVehiculoState();
}
 
class _AddVehiculoState extends State<AddVehiculo> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/Images/logoCF.png',
              fit: BoxFit.contain, height: 90),
        ]),
        elevation: 0,
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[900],     
          body: Center(child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                  fillColor: Colors.blueGrey[700],
                  focusColor: Colors.amber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  
                   // border: OutlineInputBorder(),
                    labelText: 'Nombre del vehículo.',
                  ),
                  onChanged: (text) {
                    setState(() {
                      fullName = text;
                    });
                  },
                )),
                Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: nameController,
                  decoration: InputDecoration(
                    //fillColor: Colors.amber,
                    border: OutlineInputBorder(),
                    labelText: 'Número del GPS',
                  ),
                  onChanged: (text) {
                    setState(() {
                      fullName = text;
                    });
                  },
                )),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(fullName),
            )
          ]
        ))
      ),
    );
  }
}