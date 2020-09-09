import 'package:flutter/material.dart';
import 'package:design_3/models/chart.dart';
import 'package:design_3/components/statistic/cardMiddleFirst.dart';
import 'package:design_3/components/statistic/cardMiddleSecond.dart';
import 'package:design_3/components/statistic/cardChart.dart';

class Statistic extends StatefulWidget {
  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  List<Chart> _data() {
    final data = [
      new Chart(5000, 'Apr 1'),
      new Chart(9000, 'Apr 2'),
      new Chart(6000, 'Apr 3'),
      new Chart(14000, 'Apr 4'),
      new Chart(10000, 'Apr 5'),
      new Chart(15000, 'Apr 6'),
      new Chart(20000, 'Apr 7'),
    ];

    return data;
  }

  @override
  Widget build(BuildContext context) {
    var data = _data();

    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          color: Color(0xff473e97),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.short_text,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Statistics',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: 360,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff6c65ab),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 17, right: 50),
                      child: Text(
                        'Global',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    width: 190,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'My Country',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Total',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400)),
                    Text('Today',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400)),
                    Text('Yesterday',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              CardMiddleFirst(),
              CardMiddleSecond(),
              CardChart(data: data)
            ],
          ),
        ),
      ],
    ));
  }
}
