import 'dart:js';

import 'package:add_to_card_pro/screen/Provider/list_provider.dart';
import 'package:add_to_card_pro/screen/View/Home_Screen.dart';
import 'package:add_to_card_pro/screen/View/add_ro_card.dart';
import 'package:add_to_card_pro/screen/View/item_detali.dart';
import 'package:add_to_card_pro/screen/View/item_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => product_Provider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        routes: {
          '/':(context)=> Home_Scrren(),
          'item':(context)=> Item_Screen(),
          'item detali':(context)=> Item_detali(),
          'add card':(context)=> Add_card_Screen(),
        },
      ),
    )
  );
}
