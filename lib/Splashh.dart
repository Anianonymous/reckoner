import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reckoner/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return const MyHomePage();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Text(
            "Calculator",
            style: TextStyle(
                fontSize: 54,
                color: Colors.red,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
