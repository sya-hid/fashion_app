import 'package:fashion_app/models/product.dart';
import 'package:fashion_app/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final ProductModel product;
  const DetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(30),
      //       color: colorPutih,
      //     ),
      //     child: IconButton(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         icon: Icon(
      //           Icons.arrow_back_rounded,
      //           color: colorHitam,
      //         )),
      //   ),
      //   actions: [
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(30),
      //         color: colorPutih,
      //       ),
      //       child: IconButton(
      //           onPressed: () {},
      //           icon: Icon(
      //             Icons.favorite,
      //             color: colorPink,
      //           )),
      //     ),
      //   ],
      // ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.55 - 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: product.color),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: colorPutih,
                          ),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: colorHitam,
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: colorPutih,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: colorPink,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: MediaQuery.of(context).size.width / 4,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.55 - 100,
                      // width: 230,
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
                    left: 20,
                    right: 20,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 100,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product.name,
                                maxLines: 1,
                                style: textHitam.copyWith(
                                  fontSize: 24,
                                  fontWeight: bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    product.rate.toString(),
                                    style: textHitam.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  Icon(Icons.star_rate_rounded,
                                      color: Colors.yellow[700]),
                                  Text('${product.reviews}k reviews')
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '\$${product.price}',
                            style: textHitam.copyWith(
                              fontSize: 18,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Description',
              style: textHitam.copyWith(
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              product.desc,
              maxLines: 4,
              textAlign: TextAlign.justify,
              style: textHitam.copyWith(
                  fontSize: 16, height: 1.5, fontWeight: regular),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size',
                      style: textHitam.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'S',
                            style: textAbu.copyWith(
                                fontSize: 22, fontWeight: bold),
                          ),
                          Text(
                            'M',
                            style: textHitam.copyWith(
                                fontSize: 24, fontWeight: bold),
                          ),
                          Text(
                            'L',
                            style: textAbu.copyWith(
                                fontSize: 22, fontWeight: bold),
                          ),
                          Text(
                            'XL',
                            style: textAbu.copyWith(
                                fontSize: 22, fontWeight: bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Color',
                      style: textHitam.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 180,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: colorUngu),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add to Cart',
                        style: textPutih.copyWith(
                            letterSpacing: 2,
                            fontSize: 16,
                            fontWeight: semiBold)),
                    Icon(
                      Icons.shopping_cart,
                      color: colorOrange,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
