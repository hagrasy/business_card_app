import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconItemModel {
  String? url;
  IconData? iconItem;
  String? iconName;

  IconItemModel(
      {required this.url, required this.iconItem, required this.iconName});
}

List<IconItemModel> iconOnTap = [
  IconItemModel(
      url: "https://www.facebook.com/",
      iconItem: (FontAwesomeIcons.facebook),
      iconName: "FaceBook"),
  IconItemModel(
      url: "https://www.facebook.com/",
      iconItem: (FontAwesomeIcons.instagram),
      iconName: "Instagram"),
  IconItemModel(
      url: "https://www.facebook.com/",
      iconItem: (FontAwesomeIcons.behance),
      iconName: "Behance"),
  IconItemModel(
      url: "https://www.facebook.com/",
      iconItem: (FontAwesomeIcons.github),
      iconName: "GitHub"),
  IconItemModel(
      url: "https://www.facebook.com/",
      iconItem: (FontAwesomeIcons.file),
      iconName: "CV"),
];
