

import 'package:all_in_one_app/screens/eduscreen/view/eduscreen.dart';
import 'package:all_in_one_app/screens/foodscreen/view/foodscreen.dart';
import 'package:all_in_one_app/screens/ottscreen/view/ottscreen.dart';
import 'package:all_in_one_app/shopscreen/view/shopscreen.dart';
import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Homeprovider extends ChangeNotifier
{

  int i = 0; // index for bottomnavigation bar
  WebViewController? webViewController;

  void loadEduWebsite(int webIndex)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${eduWebLink[webIndex]}"));
  }
  List eduImg = [
    "assets/edu/byzus.jpg",
    "assets/edu/khan.png",
    "assets/edu/unac.jpg",
    "assets/edu/white.png",
  ];
  List eduWebLink = [
    "https://byjus.com/",
    "https://www.khanacademy.org/",
    "https://unacademy.com/",
    "https://www.whitehatjr.com/",
  ];


  void loadFoodWebsite(int webIndex)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${foodWebLink[webIndex]}"));
  }
  List foodImg = [
    "assets/food/dom.png",
    "assets/food/zom.webp",
    "assets/food/lap.png",
    "assets/food/swg.webp",
  ];
  List foodWebLink = [
    "https://www.dominos.co.in/",
    "https://www.zomato.com/",
    "https://lapinozpizza.in/",
    "https://www.swiggy.com/",
  ];

  void loadOTTWebsite(int webIndex)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${ottWebLink[webIndex]}"));
  }
  List ottImg = [
    "assets/ott/net.png",
    "assets/ott/prime.png",
    "assets/ott/sony.png",
    "assets/ott/hot.png",
  ];
  List ottWebLink = [
    "https://www.netflix.com/in/",
    "https://www.primevideo.com/",
    "https://www.zee5.com/",
    "https://www.hotstar.com/in",
  ];

  void loadShopWebsite(int webIndex)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${shopWebLink[webIndex]}"));
  }
  List shopImg = [
    "assets/shop/amz.png",
    "assets/shop/baba.png",
    "assets/shop/bb.png",
    "assets/shop/flip.png",
  ];
  List shopWebLink = [
    "https://www.amazon.in/",
    "https://www.alibaba.com/",
    "https://www.bigbasket.com/",
    "https://www.flipkart.com/",
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