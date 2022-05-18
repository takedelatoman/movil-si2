// ignore_for_file: unnecessary_new

import 'package:aplicacion_ejemplo/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BoddyLogin extends StatefulWidget {
  BoddyLogin({Key? key}) : super(key: key);

  @override
  State<BoddyLogin> createState() => _BoddyLoginState();
}

class _BoddyLoginState extends State<BoddyLogin> {
  @override
  int suma(int a, int b) {
    return a + b;
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Center(
            child: Text(
          "Libroteca",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        )),
        Center(
          child: Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_userh0rw.json',
              height: 150),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 230, 230),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          width: 300,
          height: 400,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Inicio sesion",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                      decoration: InputDecoration(
                    labelText: 'Correo',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                      decoration: InputDecoration(
                    labelText: 'Contraseña',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
                ),
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: const Text("Iniciar sesion"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20)))),
              )
            ],
          ),
        ),
      ],
    );
  }
}
