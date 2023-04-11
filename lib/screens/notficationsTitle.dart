import 'package:flutter/material.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;

  const NotificationTiles({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.notifications,
      ),
      title: Text(title,
          style: TextStyle(color: Color.fromARGB(222, 7, 136, 206))),
      subtitle: Text(subtitle,
          style: TextStyle(color: Color.fromARGB(219, 8, 11, 11))),
    );
  }
}
