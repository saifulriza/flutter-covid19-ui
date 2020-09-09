import 'package:design_3/components/statistic/chart.dart';
import 'package:flutter/material.dart';
import 'package:design_3/models/chart.dart';

class CardChart extends StatelessWidget {
  const CardChart({
    Key key,
    @required this.data,
  }) : super(key: key);

  final List<Chart> data;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        height: 250,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('Daily New Cases',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      )),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 165.0,
              child: CustomRoundedBars(data),
            ),
          ],
        ));
  }
}
