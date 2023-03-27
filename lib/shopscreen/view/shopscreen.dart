import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../screens/homescreen/provider/homeprovider.dart';

class Shopscreen extends StatefulWidget {
  const Shopscreen({Key? key}) : super(key: key);

  @override
  State<Shopscreen> createState() => _ShopscreenState();
}

class _ShopscreenState extends State<Shopscreen> {
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
                    itemBuilder: (context, index) => InkWell(onTap: () {
                      homeproviderFalse.loadShopWebsite(index);
                      Navigator.pushNamed(context, 'open');
                    },child: boxUI(homeproviderFalse.shopImg[index],)),
                    itemCount: 4,
                  ),),
                SizedBox(height: 20,),
                Text(
                  "Best Online Shoping",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),

                TextLiquidFill(
                  textAlign: TextAlign.left,
                  boxWidth: 100,
                  loadDuration: Duration(seconds: 3),
                  text: 'Cart !',
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
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black,width: 1.5)

      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("$imgPath",fit: BoxFit.cover,)),
    );
  }
}
