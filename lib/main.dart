import 'package:design_3/pages/statistic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/bannerMiddle.dart';
import 'components/menuBottom.dart';
import 'components/menuTop.dart';
import 'components/prevention.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/statistic', page: () => Statistic()),
      ],
      home: Scaffold(
        body: ListView(children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                MenuTop(),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                          children: <Widget>[
                            Text('Prevention',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Prevention(),
                      BannerMiddle()
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
        bottomNavigationBar: MenuBottom(),
      ),
    );
  }
}
