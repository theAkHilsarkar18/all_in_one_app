import 'package:all_in_one_app/screens/eduscreen/view/eduscreen.dart';
import 'package:all_in_one_app/screens/foodscreen/view/foodscreen.dart';
import 'package:all_in_one_app/screens/homescreen/provider/homeprovider.dart';
import 'package:all_in_one_app/shopscreen/view/shopscreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../../ottscreen/view/ottscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homeprovider? homeproviderTrue;
  Homeprovider? homeproviderFalse;

  @override
  Widget build(BuildContext context) {
    homeproviderTrue = Provider.of(context, listen: true);
    homeproviderFalse = Provider.of(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          elevation: 0,
          leading:
          Icon(Icons.menu, color: Colors.black, size: 35),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 20.0, height: 100.0),
              Text(
                'allin',
                style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 2, height: 100.0),
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                child: AnimatedTextKit(
                  isRepeatingAnimation: true,
                  repeatForever: true,

                  animatedTexts: [
                    RotateAnimatedText('One',textStyle: GoogleFonts.poppins(color: Colors.deepOrange,fontSize: 28,fontWeight: FontWeight.w700),),
                    RotateAnimatedText('Learn'),
                    RotateAnimatedText('Food'),
                    RotateAnimatedText('OTT'),
                    RotateAnimatedText('Shoping'),
                    RotateAnimatedText('One',textStyle: GoogleFonts.poppins(color: Colors.deepOrange,fontSize: 28,fontWeight: FontWeight.w700),),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
          // title: Row(
          //   children: [
          //     Text(
          //       "allin",
          //       style: GoogleFonts.raleway(
          //         color: Colors.black,
          //         fontSize: 30,
          //         fontWeight: FontWeight.w600,
          //         letterSpacing: 1,
          //       ),
          //     ),
          //     Text(
          //       "One",
          //       style: GoogleFonts.raleway(
          //         color: Colors.deepOrange,
          //         fontSize: 30,
          //         fontWeight: FontWeight.w700,
          //         letterSpacing: 1,
          //       ),
          //     ),
          //   ],
          // ),
        ),
        body: Stack(
          children: [
            homeproviderTrue!.screenList[homeproviderTrue!.i],
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            //     height: 70,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(60),
            //     ),
            //     alignment: Alignment.center,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Column(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //
            //             Icon(
            //               Icons.book,
            //               color: Colors.deepOrange,
            //             ),
            //             Text("Learn",style: GoogleFonts.poppins(color: Colors.deepOrange),)
            //           ],
            //         ),
            //         Icon(
            //           Icons.fastfood_rounded,
            //           color: Colors.black,
            //         ),
            //         Icon(
            //           Icons.local_movies_rounded,
            //           color: Colors.black,
            //         ),
            //         Icon(
            //           Icons.shopping_cart_rounded,
            //           color: Colors.black,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(5),
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(width: 1,color: Colors.black))
                ),
                child: GNav(
                  onTabChange: (value) {
                    homeproviderFalse!.onNavigationClick(value);
                  },
                    rippleColor: Colors.white, // tab button ripple color when pressed
                    hoverColor: Colors.grey.shade50, // tab button hover color
                    haptic: true, // haptic feedback
                    tabBorderRadius: 15,
                    tabActiveBorder: Border.all(color: Colors.deepOrange, width: 1.5), // tab button border
                    tabBorder: Border.all(color: Colors.black, width: 1), // tab button border
                    curve: Curves.easeInCubic, // tab animation curves
                    duration: Duration(milliseconds: 500), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: Colors.black, // unselected icon color
                    activeColor: Colors.deepOrange, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: Colors.white.withOpacity(0.1), // selected tab background color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
                    tabs: [
                      GButton(
                        icon: Icons.book,
                        text: 'Learn',
                      ),
                      GButton(
                        icon: Icons.fastfood,
                        text: 'Food',
                      ),
                      GButton(
                        icon: Icons.local_movies_rounded,
                        text: 'OTT',
                      ),
                      GButton(
                        icon: Icons.shopping_cart_sharp,
                        text: 'Shop',
                      )
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget boxUI(String imgPath) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            "$imgPath",
          )),
    );
  }
}
