import 'package:flutter/material.dart';

import '../models/icon_model.dart';

// ignore: must_be_immutable
class IconView extends StatelessWidget {
  IconItemModel model;
  IconView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(model.iconItem),
      iconSize: 80,
    );
  }
}
