import 'package:aplicacion_ejemplo/pages/loginpage/login.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Swipe extends StatefulWidget {
  Swipe({Key? key}) : super(key: key);

  @override
  State<Swipe> createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  @override
  Widget build(BuildContext context) {
    final page = [
      Container(
        color: Colors.black,
        width: 500,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Bienvenido a tienda si2",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            const Text(
              " tienda si2",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15),
            ),
            Center(
              child: Image.asset("assets/persona1.png"),
            ),
            GFButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              text: "Iniciar",
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              color: Colors.white,
              shape: GFButtonShape.pills,
              type: GFButtonType.outline,
            ),
          ],
        ),
      ),
      Container(
        color: Colors.deepOrange,
        width: 500,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Conectate con tu tiendasi2",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Center(
              child: Image.asset("assets/persona2.png"),
            ),
            GFButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              text: "Iniciar",
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
              color: Colors.black,
              shape: GFButtonShape.pills,
              type: GFButtonType.outline,
            ),
          ],
        ),
      ),
      Container(
        color: Colors.redAccent,
        width: 500,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Conectate con tu tiendasi2",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Center(
              child: Image.asset("assets/persona3.png"),
            ),
            GFButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              text: "Iniciar",
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
              color: Colors.white,
              shape: GFButtonShape.pills,
              type: GFButtonType.outline,
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
        body: LiquidSwipe(
      pages: page,
      positionSlideIcon: 0,
      enableLoop: true,
      slideIconWidget: const Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.arrow_back_ios,
          size: 40,
          color: Colors.white,
        ),
      ),
    ));
  }
}
