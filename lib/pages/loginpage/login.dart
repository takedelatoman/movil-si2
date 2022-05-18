// ignore_for_file: unnecessary_new

import 'package:aplicacion_ejemplo/pages/homepage/homepage.dart';
import 'package:aplicacion_ejemplo/pages/loginpage/widgets/body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.amber,
        child: SingleChildScrollView(child: BoddyLogin()),
      ),
    );
  }
}
