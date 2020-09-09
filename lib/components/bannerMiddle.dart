import 'package:flutter/material.dart';

class BannerMiddle extends StatelessWidget {
  const BannerMiddle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 350,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
            gradient: LinearGradient(
              colors: [
                Color(0xffa993bf),
                Color(0xff6147c9),
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(right: 20, top: 20, left: 100),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Do your own your test!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Text(
                        'Follow the instructions to do your own test.',
                        style: TextStyle(
                          color: Color(0xFFb2ade4),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: -40.0,
          top: -60.0,
          child: Row(
            children: <Widget>[
              Container(
                  width: 250, height: 250, child: Image.asset('assets/4.png')),
            ],
          ),
        ),
      ],
    );
  }
}
