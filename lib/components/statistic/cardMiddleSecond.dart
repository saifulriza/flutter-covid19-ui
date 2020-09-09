import 'package:flutter/material.dart';

class CardMiddleSecond extends StatelessWidget {
  const CardMiddleSecond({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 110,
            height: 100,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Color(0xff4cd97b),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Recovered',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('17,977',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Container(
            width: 110,
            height: 100,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Color(0xff4db4ff),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Active',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('301,251',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: 110,
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xff9059ff),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Serious',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('8,702',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
