import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/widgets/my_drawer.dart';
import 'package:ecommerce_ui/widgets/product_card/product_card.dart';
import 'package:ecommerce_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('eCommerce'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_offer),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 4.0,
                  child: Image.network(
                    //'https://www.imgworlds.com/wp-content/uploads/2015/11/ad-cn-sp-originals.jpg',
                    'https://i.pinimg.com/originals/94/50/ed/9450edc9e2da48e07031c79b8f725010.jpg',
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 10,
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.orange[800],
                      child: Text(
                        'DISCOVER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 20),
            Divider(
              height: 2,
              thickness: 4,
              color: Colors.grey,
              indent: 150,
              endIndent: 150,
            ),
            SizedBox(height: 10),
            Text(
              'OUR POPULAR PRODUCTS',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            SizedBox(height: 10),
            Divider(
              height: 2,
              thickness: 4,
              color: Colors.grey,
              indent: 150,
              endIndent: 150,
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
                  ProductCard(
                    model: ProductModel(
                      imageUrl:
                          'https://cdn-1.jjshouse.com/upimg/s330/dd/e7/56714acdf56743fde0d04e5d09f1dde7.jpg',
                      price: '249',
                      title: 'Red Dress',
                    ),
                  ),
                  ProductCard(
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
            Card(
              elevation: 4,
              child: Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.grey[800],
                  child: Text(
                    'View all Items',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
