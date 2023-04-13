import 'package:flutter/material.dart';
import 'package:my_shop_app/widgets/search_box.dart';
import 'package:my_shop_app/widgets/main_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_shop_app/models/product.dart';
import 'package:my_shop_app/screens/product_list_screen.dart';
import 'package:my_shop_app/widgets/product_list_item.dart';
import 'package:my_shop_app/widgets/product_grid_view_builder.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MainDrawer(),
      backgroundColor: Color.fromARGB(222, 192, 228, 236),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: Color.fromARGB(222, 198, 227, 231),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              SearchBox(),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 8),
                          child: Column(children: [
                            SvgPicture.asset("assets/icon/Tshirt.svg"),
                            SizedBox(height: 8),
                            Text("T-shirt"),
                          ]))),
                  OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 8),
                          child: Column(children: [
                            SvgPicture.asset("assets/icon/shirt.svg"),
                            SizedBox(height: 8),
                            Text("shirt"),
                          ]))),
                  OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 8),
                          child: Column(children: [
                            SvgPicture.asset("assets/icon/dress.svg"),
                            SizedBox(height: 8),
                            Text("dresss"),
                          ]))),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "New",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://product.hstatic.net/200000312481/product/ato1008_2_27c637f4ef3a47058f7c6feea9d57e51_master.jpg",
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                      "https://bizweb.dktcdn.net/100/401/610/products/zgl24013dtorsofrontview.jpg?v=1655967176993",
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://product.hstatic.net/200000312481/product/ato1008_2_27c637f4ef3a47058f7c6feea9d57e51_master.jpg",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://bizweb.dktcdn.net/100/401/610/products/zgl24013dtorsofrontview.jpg?v=1655967176993",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "New",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      "https://product.hstatic.net/200000312481/product/ato1008_2_27c637f4ef3a47058f7c6feea9d57e51_master.jpg",
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://bizweb.dktcdn.net/100/401/610/products/zgl24013dtorsofrontview.jpg?v=1655967176993",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://product.hstatic.net/200000312481/product/ato1008_2_27c637f4ef3a47058f7c6feea9d57e51_master.jpg",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://bizweb.dktcdn.net/100/401/610/products/zgl24013dtorsofrontview.jpg?v=1655967176993",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "New",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      "https://product.hstatic.net/200000312481/product/ato1008_2_27c637f4ef3a47058f7c6feea9d57e51_master.jpg",
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://bizweb.dktcdn.net/100/401/610/products/zgl24013dtorsofrontview.jpg?v=1655967176993",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://product.hstatic.net/200000312481/product/ato1008_2_27c637f4ef3a47058f7c6feea9d57e51_master.jpg",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                    Image.network(
                        "https://bizweb.dktcdn.net/100/401/610/products/zgl24013dtorsofrontview.jpg?v=1655967176993",
                        height: 150),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
