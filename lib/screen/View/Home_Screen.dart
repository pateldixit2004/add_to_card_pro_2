import 'dart:html';

import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Scrren extends StatefulWidget {
  const Home_Scrren({Key? key}) : super(key: key);

  @override
  State<Home_Scrren> createState() => _Home_ScrrenState();
}

class _Home_ScrrenState extends State<Home_Scrren> {
  product_Provider? provider;
  int? index;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<product_Provider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/image/logo1.png", height: 30, width: 100,),
        leading: Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search_rounded, color: Colors.black,),
                SizedBox(width: 15),
                Icon(Icons.favorite, color: Colors.black,),
                SizedBox(width: 15),
                IconButton(onPressed: () {

                  Navigator.pushNamed(context, 'add card',);

                }, icon: Icon(Icons.shopping_cart, color: Colors.black,)),
                SizedBox(width: 15),
                Icon(Icons.notifications, color: Colors.black,),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/image/s1.jpg", height: 100, width: 250,),
                      SizedBox(width: 5),
                      Image.asset(
                        "assets/image/s2.jpg", height: 100, width: 250,),
                      SizedBox(width: 5),
                      Image.asset(
                        "assets/image/s3.png", height: 100, width: 250,),
                      SizedBox(width: 5),
                    ],
                  );
                }, scrollDirection: Axis.horizontal, itemCount: 5,),
              ),
            ),
            // SizedBox(
            //   height: 150,
            //   child: Expanded(
            //     child: ListView.builder(itemBuilder: (context, index) {
            //       return Row(
            //         // mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Column(
            //             children: [
            //               Center(child: Text("Exciting Offer"),),
            //             ],
            //           ),
            //           Image.asset(
            //             "assets/image/o1.jpg", height: 100, width: 250,),
            //           SizedBox(width: 5),
            //           Image.asset(
            //             "assets/image/o2.jpg", height: 100, width: 250,),
            //           SizedBox(width: 5),
            //           Image.asset(
            //             "assets/image/o3.jpg", height: 100, width: 250,),
            //           SizedBox(width: 5),
            //         ],
            //       );
            //     }, scrollDirection: Axis.horizontal, itemCount: 3,),
            //   ),
            // ),            Divider(height: 10, thickness: 2,),
            Divider(height: 10, thickness: 2,),

            Container(
              height: 100,
              width: double.infinity,
              child: Column(
                children: [
                  Center(child: Text("Exciting Offer"),),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Row(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/image/o1.jpg", height: 100, width: 250,),
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/image/o2.jpg", height: 100, width: 250,),
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/image/o3.jpg", height: 100, width: 250,),
                          SizedBox(width: 5),
                        ],
                      );
                    }, scrollDirection: Axis.horizontal, itemCount: 3,),
                  ),
                ],
              ),
            ),
            Divider(height: 10, thickness: 2,),

            Container(
              height: 130,
              width: double.infinity,
              child: Column(
                children: [
                  Center(child: Text("Shop for"),),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return  Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'item', arguments: index);
                            },
                            child: Container(
                                height: 70,
                                width: 150,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/image/mm1.jpg", height: 50, width: 50,),
                                    Text("Men"),

                                  ],
                                )
                            ),
                          ),
                          Container(
                              height: 70,
                              width: 150,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/image/ww1.jpg", height: 50, width: 50,),
                                  Text("Women"),

                                ],
                              )
                          ),
                          Container(
                              height: 70,
                              width: 150,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/image/cc1.jpg", height: 50, width: 50,),
                                  Text("Couple"),

                                ],
                              )
                          ),
                        ],
                      );
                    }, scrollDirection: Axis.horizontal, itemCount: 1,),
                  ),
                ],
              ),
            ),
            Divider(height: 10, thickness: 2,),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Trading Product"),
                  Row(
                    children: [
                      trading("assets/image/m1.jpg", '₹ 5000'),
                      trading("assets/image/m2.jpg", '₹ 15000'),
                      trading("assets/image/m3.jpg", '₹ 25000'),
                      trading("assets/image/m4.jpg", '₹ 35000'),
                    ],
                  )
                ],
              ),
            ),
            Divider(height: 10, thickness: 2,),
            //shop smart
            // Container(
            //   height: 150,
            //   width: double.infinity,
            //   child: Column(
            //     children: [
            //       Text("Shop Smart"),
            //       SizedBox(height: 10),
            //       Expanded(
            //         child: ListView.builder(itemBuilder: (context, index) {
            //           return Container(height: 100, width: 100, child: Row(children: [
            //             Image.asset("assets/image/sm1.jpg"),
            //             Image.asset("assets/image/sm2.jpg"),
            //             Image.asset("assets/image/sm3.jpg"),
            //             Image.asset("assets/image/sm4.jpg"),
            //           ],),);
            //         }, itemCount: 1,),
            //       )
            //     ],
            //   ),
            // ),
            Container(
              height: 100,
              width: double.infinity,
              child: Column(
                children: [
                  Text("Shop Smart"),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Container(height: 80, width: 100, child: Row(children: [
                        TopSellers("assets/image/sm1.jpg", '₹ 10000'),
                        TopSellers("assets/image/sm2.jpg", '₹ 20000'),
                        TopSellers("assets/image/sm3.jpg", '₹ 30000'),
                        TopSellers("assets/image/sm4.jpg", '₹ 40000'),
                      ],),);
                    }, itemCount: 1,),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),);
  }

  Widget trading(String? image, String? data) {
    return Container(
      height: 125,
      width: 100,
      child: Column(
        children: [
          Image.asset("$image", height: 100,),
          Text("$data"),
        ],
      ),
    );
  }
  Widget TopSellers(String? image, String? data) {
    return Container(
      height: 125,
      width: 100,
      child: Column(
        children: [
          Image.asset("$image", height: 60,),
          Text("$data"),
        ],
      ),
    );
  }
}
