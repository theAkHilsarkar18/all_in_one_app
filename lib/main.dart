import 'package:all_in_one_app/screens/homescreen/view/homescreen.dart';
import 'package:all_in_one_app/screens/openscreen/view/openscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Homescreen(),
        'open' : (context) => Openscreen(),
      },
    ),
  );
}
