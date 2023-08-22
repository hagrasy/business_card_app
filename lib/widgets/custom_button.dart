import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FaIcon(
            FontAwesomeIcons.facebookF,
            size: 50,
            color: Color(0xffd1d3d4),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 30,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
