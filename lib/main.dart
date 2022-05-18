import 'package:aplicacion_ejemplo/pages/liquid_swipe/swipe.dart';
import 'package:aplicacion_ejemplo/pages/loginpage/login.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';
//import 'package:tbib_splash_screen/tbib_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0)).then((value) => setState(() {
          isLoaded = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreenView(
        navigateWhere: isLoaded,
        navigateRoute: Swipe(),
        text: WavyAnimatedText(
          "Tienda si2",
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        imageSrc: "https://assets6.lottiefiles.com/packages/lf20_userh0rw.json",
        logoSize: 500,
        //  displayLoading: false,
      ),
    );
  }
}
