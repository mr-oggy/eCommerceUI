import 'package:ecommerce_ui/src/advice.dart';
import 'package:ecommerce_ui/src/home.dart';
import 'package:ecommerce_ui/src/products.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: const EdgeInsets.all(0), children: [
        UserAccountsDrawerHeader(
          accountName: Text("Abhishek Kumar Gupta"),
          accountEmail: Text("abhishekkumargupta11@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1504567961542-e24d9439a724?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
          ),
        ),
        ListTile(
          title: Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        ListTile(
          title: Text('Products'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Products(),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Advice"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Advice(),
              ),
            );
          },
        ),
      ]),
    );
  }
}
