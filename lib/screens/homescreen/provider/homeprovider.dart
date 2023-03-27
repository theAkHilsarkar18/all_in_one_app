

import 'package:all_in_one_app/screens/eduscreen/view/eduscreen.dart';
import 'package:all_in_one_app/screens/foodscreen/view/foodscreen.dart';
import 'package:all_in_one_app/screens/ottscreen/view/ottscreen.dart';
import 'package:all_in_one_app/shopscreen/view/shopscreen.dart';
import 'package:flutter/foundation.dart';

class Homeprovider extends ChangeNotifier
{

  int i = 0;
  List eduImg = [
    "assets/edu/byzus.jpg",
    "assets/edu/khan.png",
    "assets/edu/unac.jpg",
    "assets/edu/white.png",
  ];


  List foodImg = [
    "assets/food/dom.png",
    "assets/food/zom.webp",
    "assets/food/lap.png",
    "assets/food/swg.webp",
  ];

  List ottImg = [
    "assets/ott/net.png",
    "assets/ott/prime.png",
    "assets/ott/sony.png",
    "assets/ott/hot.png",
  ];

  List shopImg = [
    "assets/shop/amz.png",
    "assets/shop/baba.png",
    "assets/shop/bb.png",
    "assets/shop/flip.png",
  ];

  List screenList = [
    Eduscreen(),
    Foodscreen(),
    Ottscreen(),
    Shopscreen(),
  ];

  void onNavigationClick(int index)
  {
    i = index;
    notifyListeners();
  }

}