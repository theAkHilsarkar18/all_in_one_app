
import 'package:all_in_one_app/screens/eduscreen/view/eduscreen.dart';
import 'package:all_in_one_app/screens/foodscreen/view/foodscreen.dart';
import 'package:all_in_one_app/screens/homescreen/provider/homeprovider.dart';
import 'package:all_in_one_app/screens/homescreen/view/homescreen.dart';
import 'package:all_in_one_app/screens/openscreen/view/openscreen.dart';
import 'package:all_in_one_app/screens/ottscreen/view/ottscreen.dart';
import 'package:all_in_one_app/shopscreen/view/shopscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
          'open' : (context) => Openscreen(),
          'edu' : (context) => Eduscreen(),
          'edu' : (context) => Foodscreen(),
          'ott' : (context) => Ottscreen(),
          'shop' : (context) => Shopscreen(),
        },
      ),
    ),
  );
}
