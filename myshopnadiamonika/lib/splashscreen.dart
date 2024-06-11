import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myshopnadiamonika/landingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menambahkan delay untuk simulasi splash screen selama 2 detik
    Timer(const Duration(seconds: 5), () {
      // Pindah ke halaman berikutnya setelah splash screen selesai
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Image.asset(
          './lib/assets/images/logoshop.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
