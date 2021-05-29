import 'package:flutter/material.dart';

class ProssesChart extends StatelessWidget {
  const ProssesChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 15,
              width: 5,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              width: 5,
            ),
            Text('Running'),
            SizedBox(
              width: 50,
            ),
            Text(
              '0(0%)',
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 15,
              width: 5,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              width: 5,
            ),
            Text('Idle'),
            SizedBox(
              width: 78,
            ),
            Text(
              '0(0%)',
              style: TextStyle(color: Colors.yellow),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 15,
              width: 5,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              width: 5,
            ),
            Text('Stopped'),
            SizedBox(
              width: 48,
            ),
            Text(
              '1(5%)',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 15,
              width: 5,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              width: 5,
            ),
            Text('InActive'),
            SizedBox(
              width: 35,
            ),
            Text(
              '17(89%)',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 15,
              width: 5,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              width: 5,
            ),
            Text('No Data'),
            SizedBox(
              width: 50,
            ),
            Text(
              '1(5%)',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
