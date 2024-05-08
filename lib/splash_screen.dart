import 'dart:async';
import 'package:flutter/material.dart';
import 'emergency_calls_screen.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ super.key });

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 5);

    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return const EmergencyCallsScreen();
        })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/splash_sos.jpeg",
          width: 412,
          height: 732,
        ),
      ),
    );
  }
}