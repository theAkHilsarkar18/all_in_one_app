
import 'package:all_in_one_app/screens/homescreen/provider/homeprovider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Foodscreen extends StatefulWidget {
  const Foodscreen({Key? key}) : super(key: key);

  @override
  State<Foodscreen> createState() => _FoodscreenState();
}

class _FoodscreenState extends State<Foodscreen> {


  @override
  Widget build(BuildContext context) {

    Homeprovider homeproviderFalse = Provider.of(context,listen: true);

    return SafeArea(child: Scaffold(

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
                    homeproviderFalse.loadFoodWebsite(index);
                    Navigator.pushNamed(context, 'open');
                  },child: boxUI(homeproviderFalse.foodImg[index])),
                  itemCount: 4,
                ),),
              SizedBox(height: 20,),
              Text(
                "Best App For",
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              TextLiquidFill(
                textAlign: TextAlign.left,
                boxWidth: 130,
                loadDuration: Duration(seconds: 3),
                text: 'Foody !',
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
    ),);
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
      child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("$imgPath")),
    );
  }

}
