import 'package:aplicacion_ejemplo/pages/homepage/widgets/carrusel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _showModalBottomSheet(context);
          },
          backgroundColor: Colors.redAccent,
          label: const Text('Mis libros'),
          icon: const Icon(Icons.book),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("HomePage"),
        ),
        body: ListView(
          children: [Carruselpage()],
        ));
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                // ignore: unnecessary_new
                // ignore: prefer_const_constructors
                leading: new Icon(
                  Icons.book,
                  color: Colors.redAccent,
                ),
                title: const Text("Libro 1"),
              ),
              ListTile(
                leading: new Icon(Icons.book, color: Colors.redAccent),
                title: const Text("Libro 2"),
              ),
              ListTile(
                onTap: () {},
                leading: new Icon(Icons.book, color: Colors.redAccent),
                title: const Text("Libro 3"),
              )
            ],
          );
        });
  }
}
