import 'dart:async';
import 'package:flutter/material.dart';
import 'package:unigalapps/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    starSplashScreen();
  }

  starSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
     Navigator.of(context).pushReplacement(
       MaterialPageRoute(builder: (context) => MyApp()),
     );
   });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 255, 203),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/splash.png',
                width: 300.0,
                height: 100.0,
                fit: BoxFit.contain,
              ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            'Celya Apps',
            style:TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 45, 83, 46),
            ),
          ),
        ],
      ),    
    );
  }
}
