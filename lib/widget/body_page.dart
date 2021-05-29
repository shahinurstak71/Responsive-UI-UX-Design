import 'package:flutter/material.dart';
import 'package:skoder/widget/bar_chart.dart';
import 'package:skoder/widget/distance.dart';
import 'package:skoder/widget/gdp_chart.dart';
import 'package:skoder/widget/grid_container.dart';
import 'package:skoder/widget/grid_container2.dart';
import 'package:skoder/widget/outline_border_container.dart';
import 'package:skoder/widget/process_chart.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({Key key}) : super(key: key);

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              elevation: 5,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Fleet Status',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Row(
                      children: [
                        GdpPage(),
                        SizedBox(
                          width: 10,
                        ),
                        ProssesChart(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Fleet Usage',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                        OutlineBorderContainer(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Total Fleet Usage',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '0 km',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Avg.Distance/Object',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '0 km',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'Average Driving Time',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '0,00 hrs by Driver(s',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Text('Distance (km)')),
                    ),
                    Distance(),
                    Container(
                      height: 15,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('1'),
                            Text('4'),
                            Text('7'),
                            Text('10'),
                            Text('13'),
                            Text('16'),
                            Text('19'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Duration',
                            style: TextStyle(color: Colors.grey),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Fleet Idle',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      OutlineBorderContainer(),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Icon(
                              Icons.icecream,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Total Fleet Idle'),
                          Spacer(),
                          Text('O hr')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Icon(
                              Icons.table_chart,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Approx Fuel Waste'),
                          Spacer(),
                          Text('O hr')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 0.0, bottom: 17),
                        child: Text('Note:',
                            style: TextStyle(color: Colors.black)),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Generally an idling car uses somewhere between 1.89 to 2.64 liter of fuel per hour.',
                              style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GridContainer(),
          GridContainer2(),
          Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Maintenance Reminder',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Due'),
                            Spacer(),
                            Text('0'),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Icon(
                                Icons.alarm,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Overdue'),
                            Spacer(),
                            Text('0'),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                  ]))),
          Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Renewal Reminder',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Due'),
                            Spacer(),
                            Text('0'),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Icon(
                                Icons.alarm,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Overdue'),
                            Spacer(),
                            Text('0'),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                  ]))),
          Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Fleet Fuel',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                        OutlineBorderContainer(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Total Fuel Refill'),
                            Spacer(),
                            Column(
                              children: [
                                Text('0 Itr',
                                    style: TextStyle(color: Colors.black)),
                                Text('0 times',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Icon(
                                Icons.alarm,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Total Fuel Drain'),
                            Spacer(),
                            Column(
                              children: [
                                Text('0 Itr',
                                    style: TextStyle(color: Colors.black)),
                                Text('0 times',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Divider(
                        thickness: 2,
                        height: 0.0,
                        color: Colors.brown[50],
                      ),
                    ),
                  ]))),
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              alignment: Alignment.center,
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Distance Classification',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              width: 1,
                              color: Colors.green,
                              style: BorderStyle.solid),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.date_range_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              'This week(Sun-Tody)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text('No Record Found',
                        style: TextStyle(color: Colors.grey)),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              alignment: Alignment.center,
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Object Mode',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 68, top: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('19'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('0'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('0'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('0'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('0'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // SfCartesianChart(),

                  BarChart()
                ],
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              alignment: Alignment.center,
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Fleet Workload',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      OutlineBorderContainer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text('No Record Found',
                        style: TextStyle(color: Colors.grey)),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              alignment: Alignment.center,
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'SMS Log',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      OutlineBorderContainer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Divider(
                      thickness: 2,
                      height: 0.0,
                      color: Colors.brown[50],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text('No Record Found',
                        style: TextStyle(color: Colors.grey)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
