import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Add_card_Screen extends StatefulWidget {
  const Add_card_Screen({Key? key}) : super(key: key);

  @override
  State<Add_card_Screen> createState() => _Add_card_ScreenState();
}

class _Add_card_ScreenState extends State<Add_card_Screen> {
  product_Provider? providerF;
  product_Provider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<product_Provider>(context, listen: false);
    providerT = Provider.of<product_Provider>(context, listen: true);
    // int? index;
    // int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.white,title: Text("My cart",style: TextStyle(color: Colors.white30),),
        actions: [
          Text("WISHLIST",style: TextStyle(color: Colors.white30),)
        ],
      ),
      // body: Column(
      //   children: [
      //     Center(
      //       child: Container(
      //         height: 200,
      //         width: 350,
      //         color: Colors.blue,
      //         child: Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Image.asset("${providerF!.addcatdList[index].image}",height: 100,width: 90,),
      //             Column(
      //               mainAxisSize: MainAxisSize.min,
      //               children: [
      //                 Text("${providerF!.addcatdList[index].name}",)
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // )
      // body: Column(
      //   children: [
      //     Stack(children: [
      //       Container(height: 200,width: double.infinity,color: Colors.white,),
      //       Row(
      //         children: [
      //           Image.asset("${providerF!.addcatdList[index!].image}",width: 70,),
      //           SizedBox(width: 10),
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Container(
      //                 height: 50,
      //                 width: 150,
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text("${providerF!.addcatdList[index].name}",style: TextStyle(fontSize: 10),),
      //                     Text("₹ ${providerF!.addcatdList[index].price}"),
      //                   ],
      //                 ),
      //               ),
      //               // Text("${providerF!.addcatdList[index].Qty}"),
      //               Row(
      //                 children: [
      //                   IconButton(
      //                       onPressed: () {
      //                         providerT!.decrement(index);
      //                       },
      //                       icon: Icon(Icons.remove)),
      //                   SizedBox(
      //                     width: 5,
      //                   ),
      //                   Container(
      //                     height: 20,
      //                     width: 50,
      //                     child: Center(
      //                         child: Text("${providerF!.itemList[index].Qty}")),
      //                   ),
      //                   SizedBox(width: 5),
      //                   IconButton(
      //                       onPressed: () {
      //                         providerT!.increment(index);
      //                       },
      //                       icon: Icon(Icons.add)),
      //                 ],
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     ]),
      //   ],
      // ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.pushNamed(context, 'item',arguments: index);
          },
          title: Text("${providerT!.addcatdList[index].name}",style: TextStyle(fontSize: 10),),
          leading: Image.asset("${providerT!.addcatdList[index].image}"),
          // subtitle: Text("₹ ${providerT!.addcatdList[index].price! * providerT!.addcatdList[index].Qty!}"),
          subtitle: Text("${providerT!.addcatdList[index].price! * providerT!.addcatdList[index].Qty!}"),

          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
            IconButton(
                onPressed: () {
                  providerT!.decrement(index);
                  },
                icon: Icon(Icons.remove)),
            Container(
              height: 20,
              width: 50,
              child: Center(
                  child: Text("${providerT!.itemList[index].Qty}")),
            ),
              IconButton(
                onPressed: () {
                  providerT!.increment(index);
                  },
                icon: Icon(Icons.add)),
              IconButton(
                onPressed: () {
                  providerT!.delete(index);
                  },
                icon: Icon(Icons.delete)),
            ],
          ),
        );
      },itemCount: providerT!.addcatdList.length,),
    ),);
  }
}
