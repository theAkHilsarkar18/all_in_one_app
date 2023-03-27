import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../homescreen/provider/homeprovider.dart';

class Ottscreen extends StatefulWidget {
  const Ottscreen({Key? key}) : super(key: key);

  @override
  State<Ottscreen> createState() => _OttscreenState();
}

class _OttscreenState extends State<Ottscreen> {
  @override
  Widget build(BuildContext context) {

    Homeprovider homeproviderFalse = Provider.of(context,listen: true);
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
                SizedBox(height: 10,),
                Text(
                  "Good Morning",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Akhil !",
                  style: GoogleFonts.rubik(
                      color: Colors.deepOrange,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 350,
                  width: 400,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => boxUI(homeproviderFalse.ottImg[index]),
                    itemCount: 4,
                  ),),
                SizedBox(height: 20,),
                Text(
                  "Best Entertainment",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 10,),
                TextLiquidFill(
                  textAlign: TextAlign.left,
                  boxWidth: 180,
                  loadDuration: Duration(seconds: 3),
                  text: 'Content !',
                  waveColor: Colors.deepOrange,
                  boxBackgroundColor: Colors.grey.shade100,
                  textStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                  boxHeight: 80.0,
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
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("$imgPath",fit: BoxFit.cover,)),
    );
  }
}
