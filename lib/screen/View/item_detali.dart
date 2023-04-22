import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item_detali extends StatefulWidget {
  const Item_detali({Key? key}) : super(key: key);

  @override
  State<Item_detali> createState() => _Item_detaliState();
}

class _Item_detaliState extends State<Item_detali> {
  product_Provider? providerF;
  product_Provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<product_Provider>(context, listen: false);
    providerT = Provider.of<product_Provider>(context, listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          ),
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
        body: Column(
          children: [
            Center(child: Image.asset("${providerF!.itemList[index].image}")),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.camera),
                  Text("Try it on"),
                ],
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            Text("${providerF!.itemList[index].name}"),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            "Offer Price:₹ ${providerF!.itemList[index].price}"),
                        Text(
                          "inclusive of al taxes",
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                        Text(
                          "No Cost Emi",
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  );
                },
                itemCount: 1,
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Offer Price:₹ ${providerF!.itemList[index].price}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "inclusive of al taxes",
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                        Text(
                          "No Cost Emi",
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                  itemCount: 1,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Select quantity"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {
                              providerT!.decrement(index);
                            },
                            icon: Icon(Icons.remove)),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          child: Center(
                              child: Text("${providerF!.itemList[index].Qty}")),
                        ),
                        SizedBox(width: 5),
                        IconButton(
                            onPressed: () {
                              providerT!.increment(index);
                            },
                            icon: Icon(Icons.add)),
                      ],
                    ),
                  );
                },
                itemCount: 1,
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        providerF!.addcatdList.add(providerF!.itemList[index]);
                        // Navigator.pushNamed(context, 'add card',
                        //     arguments: index);
                      },
                      child: Center(child: Text("Add to Card")),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white38),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Center(child: Text("Buy Now")),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                    ),
                  ],
                ),
              ),
              alignment: FractionalOffset.bottomCenter,
            )
          ],
        ),
      ),
    );
  }
// Column(
// children: [
// ElevatedButton(onPressed: () {
//
// }, child: Center(child: Text("Add to Card")),style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
// ElevatedButton(onPressed: () {
//
// }, child: Center(child: Text("Buy Now")),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
// ],
// ),
}
