import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffd1d3d4),
        body: SafeArea(
          child: Column(
            children: [Image(image: AssetImage("images/4.png"))],
          ),
        ),
      ),
    );
  }
}
