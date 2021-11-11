import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainMenuModel {
  late final int index;
  late final IconData? icon;
  late final String? label;
  late final bool isBlank;
  MainMenuModel({required this.index, this.label,this.icon,this.isBlank=false});

  static List<MainMenuModel> list = [
    MainMenuModel(
      index: 0,
      label: 'Menu',
      icon: FontAwesomeIcons.thLarge,
    ),
    MainMenuModel(
      index: 1,
      label: 'Offers',
      icon: FontAwesomeIcons.shoppingBag,

    ),
    MainMenuModel(
      index: -1,
      isBlank: true,
    ),
    MainMenuModel(
      index: 2,
      label: 'Profile',
      icon: FontAwesomeIcons.userAlt,

    ),
    MainMenuModel(
      index: 3,
      label: 'More',
      icon: FontAwesomeIcons.indent,

    ),
  ];
}
