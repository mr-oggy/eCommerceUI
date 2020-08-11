import 'package:ecommerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardPageView extends StatelessWidget {
  final ProductModel model;

  const ProductCardPageView({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
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
              // child: Image.network(
              //   model.imageUrl,
              // ),
              child: Container(
                height: 400,
                child: PageView.builder(
                  itemCount: model.listImageUrl.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      model.listImageUrl[index],
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 20, 20),
              child: Row(
                children: [
                  Text(
                    model.title,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.grey[400],
                    ),
                    child: Center(child: Text('\$${model.price}')),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
