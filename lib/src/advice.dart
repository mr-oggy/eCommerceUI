import 'package:ecommerce_ui/src/pages/all_products.dart';
import 'package:flutter/material.dart';

class Advice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(128, 174, 212, 1),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {}),
          title: Text('Our Advice'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            indicatorWeight: 4.0,
            tabs: [
              Tab(
                text: "ALL",
              ),
              Tab(
                text: "MAN",
              ),
              Tab(
                text: "WOMAN",
              ),
              Tab(
                text: "KID",
              ),
            ],
          ),
          elevation: 0,
        ),
        body: TabBarView(
          children: [
            AllProducts(),
            Container(color: Colors.red),
            Container(color: Colors.yellow),
            Container(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
