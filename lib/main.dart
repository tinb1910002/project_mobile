import 'package:flutter/material.dart';
import 'package:my_shop_app/models/auth.dart';
import 'package:my_shop_app/screens/cart_list_screen.dart';
import 'package:my_shop_app/screens/homepage.dart';
import 'package:my_shop_app/screens/order_list_screen.dart';
import 'package:my_shop_app/screens/product_detail_screen.dart';
import 'package:my_shop_app/screens/product_list_screen.dart';
import 'package:my_shop_app/screens/splash_screen.dart';
import 'package:my_shop_app/screens/user_product_list_add_edit_screen.dart';
import 'package:my_shop_app/screens/user_product_list_manager_screen.dart';
import 'package:my_shop_app/screens/auth_screen.dart';
import 'package:my_shop_app/screens/notifications.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => Auth(),
        child: Consumer<Auth>(
          builder: (context, auth, child) {
            return MaterialApp(
              title: 'MyShop',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'Lato',
                colorScheme:
                    ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
                        .copyWith(secondary: Colors.lightGreenAccent),
              ),
              home: auth.isAuth
                  ? HomePage()
                  : FutureBuilder(
                      future: auth.tryAutoLogin(),
                      builder: (context, dataSnapshot) {
                        if (dataSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return SplashScreen();
                        } else {
                          return AuthScreen();
                        }
                      }),
              routes: {
                AuthScreen.routeName: (context) => AuthScreen(),
                HomePage.routeName: (context) => HomePage(),
                ProductListScreen.routeName: (context) => ProductListScreen(),
                ProductDetailScreen.routeName: (context) => ProductDetailScreen(
                    ModalRoute.of(context).settings.arguments),
                CartListScreen.routeName: (context) => CartListScreen(),
                OrderListScreen.routeName: (context) => OrderListScreen(),
                UserProductListManagerScreen.routeName: (context) =>
                    UserProductListManagerScreen(),
                UserProductAddEditScreen.routeName: (context) =>
                    UserProductAddEditScreen(
                        ModalRoute.of(context).settings.arguments),
                NotificationList.routeName: (context) => NotificationList(),
              },
            );
          },
        ));
  }
}
