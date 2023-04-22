import 'package:add_to_card_pro/screen/Modal/ModalClass.dart';
import 'package:flutter/cupertino.dart';

class product_Provider extends ChangeNotifier
{
  List<productModal> itemList=[
    productModal(name: 'Neo Splash Blue Dial Stainless Steel Strap Watch',price: 7000,Qty: 1,image: "assets/image/m1.jpg"),
    productModal(name: 'Titan Talk S with 1.78" AMOLED Display, Advanced BT Calling, 100+ Sports Modes, Stress & Mood Monitoring',price: 9000,Qty: 1,image: "assets/image/m2.jpg"),
    productModal(name: 'Sonata Unveil Black Dial Leather Strap Watch for Men',price: 3000,Qty: 1,image: "assets/image/m3.jpg"),
    // productModal(name: ,price: ,Qty: ,image: ),

  ];
  List<productModal> addcatdList=[];
  List imageList=[
    Image.asset("assets/image/s1.jpg"),
    Image.asset("assets/image/s2.jpg"),
    Image.asset("assets/image/s3.png"),
  ];
}