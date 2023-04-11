import 'package:flutter/material.dart';

import 'package:my_shop_app/screens/notficationsTitle.dart';
import 'package:my_shop_app/widgets/main_drawer.dart';

class NotificationList extends StatefulWidget {
  static const routeName = '/notifications';
  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(222, 222, 232, 238),
      appBar: AppBar(
        title: Text('My Notifications'),
      ),
      drawer: MainDrawer(),
      body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 12,
          itemBuilder: (context, index) {
            return NotificationTiles(
              title: 'T-Shirt Shop',
              subtitle: 'T-Shirt Shop đã gửi cho bạn một thông báo',
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          }),
    );
  }
}
