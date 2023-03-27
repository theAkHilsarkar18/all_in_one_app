import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../homescreen/provider/homeprovider.dart';

class Eduscreen extends StatefulWidget {
  const Eduscreen({Key? key}) : super(key: key);

  @override
  State<Eduscreen> createState() => _EduscreenState();
}

class _EduscreenState extends State<Eduscreen> {
  Homeprovider? homeproviderTrue;
  Homeprovider? homeproviderFalse;

  @override
  Widget build(BuildContext context) {
    homeproviderTrue = Provider.of(context, listen: true);
    homeproviderFalse = Provider.of(context, listen: false);

    return SafeArea(
      child: Scaffold(

        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wel come",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "akhil Sarkar..",
                  style: GoogleFonts.poppins(
                    color: Colors.deepOrange,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 350,
                  width: 400,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) =>
                        boxUI(homeproviderFalse!.eduImg[index]),
                    itemCount: 4,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Best Educational App",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextLiquidFill(
                  textAlign: TextAlign.left,
                  boxWidth: 100,
                  loadDuration: Duration(seconds: 3),
                  text: 'Ever !',
                  waveColor: Colors.deepOrange,
                  boxBackgroundColor: Colors.grey.shade100,
                  textStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                  boxHeight: 70.0,
                ),
              ],
            ),
          ),
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
        border: Border.all(color: Colors.black,width: 1.5)
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            "$imgPath",
          )),
    );
  }
}
