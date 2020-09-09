import 'package:flutter/material.dart';

class Menu {
  const Menu(this.title, this.icon, this.color, this.background);
  final String title;
  final IconData icon;
  final Color color;
  final Color background;
}

const List<Menu> allMenus = <Menu>[
  Menu('Home', Icons.home, Colors.white, Color(0xFF4d79fe)),
  Menu('Statistics', Icons.insert_chart, Colors.grey, null),
  Menu('note', Icons.event_note, Colors.grey, null),
  Menu('Info', Icons.info, Colors.grey, null)
];
