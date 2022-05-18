import 'package:aplicacion_ejemplo/pages/pagina2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int suma(int a, int b) {
    return a + b;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inicio de mi app"),
          backgroundColor: Colors.pink,
        ),
        body: ListView(
          children: [
            Container(
              width: 300,
              height: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pagina2()));
                },
                child: Text("Presionar"),
              ),
              //color: Colors.amber,
            ),


            Container(
              width: 300,
              height: 300,
              color: Colors.pink,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Container(width: 300, height: 300, color: Colors.blue)
          ],
        ));
  }
}
 