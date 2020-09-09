import 'package:design_3/models/prevention.dart';
import 'package:flutter/material.dart';

class Prevention extends StatelessWidget {
  const Prevention({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: allPreventions.map((PreventionModel prevention) {
          return Container(
            width: 100,
            child: Column(
              children: <Widget>[
                Image(image: AssetImage(prevention.image)),
                Text(
                  prevention.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          );
        }).toList());
  }
}
