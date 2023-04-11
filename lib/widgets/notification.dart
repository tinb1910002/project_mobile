import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget child;
  final action;
  const DefaultAppBar({
    Key key,
    this.title,
    this.child,
    this.action,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: Color.fromARGB(222, 97, 214, 62))),
      centerTitle: true,
      backgroundColor: Color.fromARGB(222, 31, 101, 215),
      elevation: 0.0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Color.fromARGB(222, 55, 82, 142)),
      leading: child,
      actions: action,
    );
  }
}
