import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text(
                          'Overspeed',
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Max Speed',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '0 km/h',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alerts',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Text('o% Object'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Stack(
            children: [
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.lightBlue[300],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
              ),
              Positioned(
                  left: 10,
                  top: 20,
                  child: Text(
                    'AC Misuse',
                    style: TextStyle(color: Colors.white),
                  )),
              Positioned(
                  left: 155,
                  top: 20,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
              Positioned(
                  top: 60,
                  left: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Approx Fuel Waste',
                          style: TextStyle(color: Colors.grey)),
                      Text('0 Itr', style: TextStyle(color: Colors.white)),
                    ],
                  )),
              Positioned(
                  top: 120,
                  left: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hours', style: TextStyle(color: Colors.grey)),
                      Text('0', style: TextStyle(color: Colors.white)),
                    ],
                  )),
              Positioned(
                  left: 103,
                  top: 120,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text('o% Object'),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
