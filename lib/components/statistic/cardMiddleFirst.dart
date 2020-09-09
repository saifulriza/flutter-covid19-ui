import 'package:flutter/material.dart';

class CardMiddleFirst extends StatelessWidget {
  const CardMiddleFirst({
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
            width: 175,
            height: 100,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Color(0xffffb25a),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Affected',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('336,851',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            width: 175,
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xffff5959),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Death',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text('9,620',
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
