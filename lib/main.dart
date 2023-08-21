import 'package:business_card_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffd1d3d4),
        body: SafeArea(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              child: SizedBox(
                width: 300,
                height: 300,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 250.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/4.png'),
                    radius: 200.0,
                  ),
                ),
              ),
            ),
            const Text(
              "Mohamed El Hagrasy",
              style: TextStyle(
                color: Color(0xff231f20),
                fontSize: 35,
                fontFamily: "fonts/OpenSans-ExtraBold.ttf",
                fontWeight: FontWeight.bold,
              ),
            ),

            // ListView.builder(itemBuilder: context.(context, index) => )
          ]),
        ),
      ),
    );
  }
}
