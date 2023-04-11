import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Color.fromARGB(222, 222, 222, 222)),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(222, 222, 222, 222),
          borderRadius: BorderRadius.circular(30),
        ),
        height: 60,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search, color: Color.fromARGB(222, 45, 18, 200)),
            Container(
              width: 270,
              padding: EdgeInsets.only(left: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(212, 15, 2, 2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
