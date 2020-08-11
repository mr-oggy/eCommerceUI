import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/widgets/colorAndSizeCard/color_size_selection_card.dart';
import 'package:ecommerce_ui/widgets/discription_card/discription_card.dart';
import 'package:ecommerce_ui/widgets/product_card/product_card_with_pageView.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Color.fromRGBO(43, 75, 92, 1),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {}),
          title: Text('Woman, Dresses'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 180,
                    child: RaisedButton(
                      elevation: 3,
                      onPressed: () {},
                      color: Color.fromRGBO(32, 60, 80, 1),
                      child: Text(
                        'ADD TO WISHLIST',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 180,
                    child: RaisedButton(
                      elevation: 4,
                      onPressed: () {},
                      color: Colors.orange,
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(7),
            ),
            preferredSize: Size.fromHeight(58),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductCardPageView(
                model: ProductModel(
                  price: '249',
                  title: 'White Dress',
                  listImageUrl: [
                    'https://www.wed2b.co.uk/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/I/LIBBY_WEDDING_DRESSES_FRONT_VIVA_BRIDE.jpg',
                    'https://www.wed2b.co.uk/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/t/a/tamsin_wedding_dress_front_viva_bride_1.jpg',
                    'https://www.estylecdn.com/manufcols/pronovias/current/zoom/MINNA-B.jpg',
                    'https://cdn.shopify.com/s/files/1/0261/0749/products/long-sleeves-tea-length-lace-wedding-dress-dv2078-jojodress_2_1024x1024.jpg?v=1546811772',
                  ],
                ),
              ),
              Discription(data: 'This is discription'),
              ColorAndSize(),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: 200,
                child: RaisedButton(
                  elevation: 4,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  color: Colors.grey[800],
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
