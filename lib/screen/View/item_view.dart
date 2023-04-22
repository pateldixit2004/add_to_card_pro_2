import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item_Screen extends StatefulWidget {
  const Item_Screen({Key? key}) : super(key: key);

  @override
  State<Item_Screen> createState() => _Item_ScreenState();
}

class _Item_ScreenState extends State<Item_Screen> {
  product_Provider? providerF;
  product_Provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<product_Provider>(context, listen: false);
    providerT = Provider.of<product_Provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Men",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      )),
                  SizedBox(width: 15),
                ],
              ),
            )
          ],
        ),

          body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

          ), itemBuilder:(context, index) {
            return data(index);
          },itemCount: providerF!.itemList.length,)
      ),
    );
  }

  Widget data(int index)
  {
    return InkWell(onTap: () {

      Navigator.pushNamed(context, 'item detali',arguments: index);
    },
      child: Container(
        height: 70,
        width: 60,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("${providerF!.itemList[index].image}",height: 80,),
            Text(" ${providerF!.itemList[index].name}",style: TextStyle(fontSize: 10,color: Colors.black54),),
            Text("₹ ${providerF!.itemList[index].price}",style: TextStyle(fontSize: 10,color: Colors.black),),
          ],

        ),
      ),
    );
  }
}
