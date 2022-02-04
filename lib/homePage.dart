import 'package:fashion_app/bottomNavBar.dart';
import 'package:fashion_app/detail.dart';
import 'package:fashion_app/models/product.dart';
import 'package:fashion_app/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPutih,
        leading: Icon(
          Icons.grid_view,
          color: colorHitam,
        ),
        centerTitle: true,
        title: Text(
          'Fashion App',
          style: textHitam.copyWith(fontSize: 18, fontWeight: bold),
        ),
        actions: [
          Icon(
            Icons.shopping_cart_sharp,
            color: colorHitam,
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'Discover your best\nsuit ',
                      style: textHitam.copyWith(
                          fontSize: 26, fontWeight: semiBold)),
                  TextSpan(
                      text: 'outfit.',
                      style:
                          textUngu.copyWith(fontSize: 26, fontWeight: semiBold))
                ],
              )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: colorHitam.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: Offset(5, 5))
                  ]),
              child: TextFormField(
                autofocus: false,
                style: textAbu.copyWith(fontSize: 18, fontWeight: light),
                onChanged: (value) {},
                decoration: InputDecoration(
                    hintText: "Search",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle:
                        textAbu.copyWith(fontSize: 18, fontWeight: light),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: colorUngu,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.tune_outlined,
                          color: Colors.white,
                        )),
                    contentPadding: const EdgeInsets.all(16)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: textHitam.copyWith(fontSize: 18, fontWeight: semiBold),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorPutih,
                      boxShadow: [
                        BoxShadow(
                            color: colorHitam.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(5, 5))
                      ]),
                  child: Text(
                    'Dresses',
                    style: textHitam.copyWith(fontWeight: bold, fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   color: colorUngu,
                  // ),
                  child: Text(
                    'T-Shirts',
                    style: textAbu.copyWith(fontWeight: semiBold, fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   color: colorUngu,
                  // ),
                  child: Text(
                    'Jeans',
                    style: textAbu.copyWith(fontWeight: semiBold, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recomendation',
                  style: textHitam.copyWith(fontSize: 18, fontWeight: semiBold),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                      dataProduct.length,
                      (index) => RecommendationCard(
                            product: dataProduct[index],
                          )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final ProductModel product;
  const RecommendationCard({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      product: product,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SizedBox(
          height: 320,
          width: 230,
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                height: 280,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: product.color),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 320,
                  width: 230,
                  child: Hero(
                    tag: '${product.id}',
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: colorPutih,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: colorPink,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorPutih.withOpacity(0.7),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: colorOrange),
                          child: Text(
                            'Hot',
                            style: textPutih.copyWith(
                                fontSize: 14, fontWeight: regular),
                          )),
                      Text(
                        product.name,
                        style:
                            textHitam.copyWith(fontSize: 18, fontWeight: bold),
                      ),
                      Row(
                        children: [
                          Text(
                            product.rate.toString(),
                            style: textHitam.copyWith(
                                fontSize: 16, fontWeight: bold),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                          ),
                          Text(
                            '${product.reviews}k reviews',
                            style: textHitam.copyWith(
                                fontSize: 14, fontWeight: regular),
                          )
                        ],
                      ),
                      Text(
                        '\$${product.price}',
                        style:
                            textHitam.copyWith(fontSize: 18, fontWeight: bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
