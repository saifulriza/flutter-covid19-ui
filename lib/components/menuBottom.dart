import 'package:design_3/models/menu.dart';
import 'package:design_3/pages/statistic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: allMenus.map((Menu menu) {
        return BottomNavigationBarItem(
            icon: Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                    color: menu.background ?? Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                    icon: Icon(
                      menu.icon,
                      color: menu.color,
                    ),
                    onPressed: () {
                      Get.to(Statistic());
                    })),
            backgroundColor: Colors.white,
            title: Text(menu.title));
      }).toList(),
    );
  }
}
