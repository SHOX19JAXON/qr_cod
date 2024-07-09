import 'package:flutter/material.dart';
class HomeQR extends StatefulWidget {
  const HomeQR({super.key});

  @override
  State<HomeQR> createState() => _HomeQRState();
}

class _HomeQRState extends State<HomeQR> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Home Screen",style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}
