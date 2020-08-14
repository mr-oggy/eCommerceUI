import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/src/pages/product_page.dart';
import 'package:flutter/material.dart';

class ProductCardNew extends StatelessWidget {
  final ProductModel model;

  const ProductCardNew({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      model.imageUrl,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    model.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('\$${model.price}'),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 270,
          child: GestureDetector(
            //onTap: onTap,
            child: Card(
              elevation: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.orange[500],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
