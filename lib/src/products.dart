import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/widgets/product_card/product_caer_with_new.dart';
import 'package:ecommerce_ui/widgets/product_card/product_card.dart';
import 'package:ecommerce_ui/widgets/tag_with_button.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Woman, Dresses'),
        bottom: PreferredSize(
          child: Container(
            color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Casual Dresses',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(58),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
        ],
        elevation: 4,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.zero,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search a item..',
                  prefixIcon: Icon(Icons.search),
                  //border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Spacer(flex: 3),
                TagWithCancelButton(text: 'top rated'),
                Spacer(),
                TagWithCancelButton(text: 'size: m'),
                Spacer(),
                TagWithCancelButton(text: 'spring'),
                Spacer(flex: 3),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                childAspectRatio: 2 / 3.8,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ProductCardNew(
                    model: ProductModel(
                      imageUrl:
                          'https://i.pinimg.com/236x/47/9c/3e/479c3e622ee32d56c629987b3f0f10c4.jpg',
                      price: '249',
                      title: 'Grey Dress',
                    ),
                  ),
                  ProductCard(
                    model: ProductModel(
                      imageUrl:
                          'https://cdn-3.jjshouse.com/upimg/jjshouse/s1140/08/04/9c1c4c396e1011276d58c0ad689e0804.jpg',
                      price: '349',
                      title: 'Light Pink Dress',
                    ),
                  ),
                  ProductCard(
                    model: ProductModel(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTq80dN1ieyNZGD4S5TvEO_eaexZQnbXHVWyg&usqp=CAU',
                      price: '249',
                      title: 'Black Dress',
                    ),
                  ),
                  ProductCard(
                    model: ProductModel(
                      imageUrl:
                          'https://cdn-1.jjshouse.com/upimg/s330/dd/e7/56714acdf56743fde0d04e5d09f1dde7.jpg',
                      price: '249',
                      title: 'Red Dress',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[300],
                ),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )),
            SizedBox(height: 20),
            Text(
              'Loding of 2,345 more items',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
