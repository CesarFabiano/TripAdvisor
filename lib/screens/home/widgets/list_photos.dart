import 'package:flutter/material.dart';

class ListPhotos extends StatelessWidget {
  final String _title0;
  final String _photo0;
  final String _title1;
  final String _photo1;
  final String _title2;
  final String _photo2;

  ListPhotos(
    this._title0,
    this._photo0,
    this._title1,
    this._photo1,
    this._title2,
    this._photo2,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(_photo0),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              child: Text(
                _title0.toString(),
                style: TextStyle(
                  fontSize: 8,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(_photo1),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              child: Text(
                _title1.toString(),
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(_photo2),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              child: Text(
                _title2.toString(),
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }

  // List<Widget> buildList(List<String> list) {
  //   List<Widget> listOfWidgets = [];
  //   list.forEach((String element) {
  //     listOfWidgets.add(
  //       Image.asset(element),
  //     );
  //   });
  //   return listOfWidgets;
  // }
}
