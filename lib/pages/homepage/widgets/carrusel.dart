import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Carruselpage extends StatefulWidget {
  Carruselpage({Key? key}) : super(key: key);

  @override
  State<Carruselpage> createState() => _CarruselpageState();
}

class _CarruselpageState extends State<Carruselpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Libros mas populares",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        GFCarousel(
          enlargeMainPage: true,
          height: 300,
          items: [
            Material(
              //estas son las cartas
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.black,
              elevation: 10,
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 230, 230),
                ),
                width: 300,
                height: 300,
                child: Column(
                  children: [
                    const Text(
                      "Amor en tiempos del colera",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/libro1.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Autor: Gabriel Garcia Marquez",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Precio: 100bs",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: GFButton(
                        onPressed: () {
                          _showMyDialog();
                        },
                        color: Colors.redAccent,
                        text: 'Comprar',
                        shape: GFButtonShape.pills,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Esta seguro de comprar el libro"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  const Text("En caso de confirmar pulse ok"),
                  const Text("En caso de cancelar pulse atras"),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Ok"),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancelar"),
              ),
            ],
          );
        });
  }
}
