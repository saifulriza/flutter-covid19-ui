import 'package:flutter/material.dart';

class MenuTop extends StatelessWidget {
  const MenuTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      decoration: new BoxDecoration(
          color: Color(0xff473e97),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
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
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Covid-19',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(5),
                            width: 20,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage('icons/flags/png/us.png',
                                    package: 'country_icons'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'USA',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(3),
                            child: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Are you feeling sick?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'if you feel sict with any of covid-19 symptoms please call or SMS is immediately for help.',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          Text(
                            'Call Now',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.chat_bubble,
                            color: Colors.white,
                          ),
                          Text(
                            'Send SMS',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF4d79fe),
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
