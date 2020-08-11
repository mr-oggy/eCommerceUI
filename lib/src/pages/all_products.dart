import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/widgets/product_card/advice_product_card.dart';
import 'package:ecommerce_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
              'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/d8ecc279296077.5cbf10682f98d.jpg'),
          Image.network(
              'https://www.womenclothshop.com/wp-content/uploads/2019/11/Front-Door-Fashion-Banner-Image-1.jpg'),
          SearchBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              childAspectRatio: 2 / 2.85,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                AdviceProductCard(
                  model: ProductModel(
                    imageUrl:
                        'https://ik.imagekit.io/mrbuttonin/mobile-main-banner-top.jpg',
                    title: 'SUMMER 2020',
                  ),
                ),
                AdviceProductCard(
                  model: ProductModel(
                    imageUrl:
                        'https://i.pinimg.com/236x/cb/48/4f/cb484fdeefa9254395e98313b377efa4--banner-web-sale-banner.jpg',
                    price: '349',
                    title: 'WINTER 20/21',
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            childAspectRatio: 2 / 1.1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 1,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AdviceProductCard(
                  model: ProductModel(
                    imageUrl:
                        'https://i.pinimg.com/originals/4b/ea/52/4bea52c050bd26b2755448bbd31d4e98.jpg',
                    title: 'PREMIUS',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
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
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
