import 'package:ecommerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';

class AdviceProductCard extends StatelessWidget {
  final ProductModel model;

  const AdviceProductCard({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
