import 'package:flutter/material.dart';
import 'package:mehra_app/models/model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

TextStyle headlingtext ()=>TextStyle(
color: Color(0xff514D4D),
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
      fontFamily: 'Tajawal'
);

Widget gradientColor ()=>Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4423B1),
                Color(0xFF6B2298),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        );
        var boardController = PageController();
        Widget buildOnboardingItem(BoardingModel model) => Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage(model.image),
                width: 250,
                height: 250,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              model.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontFamily: 'Tajawal',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                model.body,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: SmoothPageIndicator(
              controller: boardController,
              effect: const ExpandingDotsEffect(
                dotColor: Color(0xFFC4BCBC),
                activeDotColor: Color(0xFF4423B1),
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 2,
                paintStyle: PaintingStyle.fill,
                spacing: 5.0,
              ),
              count: boarding.length,
            ),
          ),
          const SizedBox(height: 5),
        ],
      );

    Widget bottomImage ()=>  Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: AssetImage('assets/bottom.png'),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 135,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          );
        
        Widget GradientButton( {
          required VoidCallback  onPressed,
          required text,
          double? width ,
          double? height
        }) {
          return Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF4423B1),
            Color(0xFFA02D87),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 0),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
        
              ),
              child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontFamily: 'Tajawal'),
          ),
        ),
              ),
            );
        }
 Widget buildWhiteButton({ required text,required VoidCallback onPressed}) {
    return Container(
      width: 336,
      height: 69,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color to white
        borderRadius: BorderRadius.circular(20),
      //   border: Border.all(
      //     //color: const Color.fromARGB(255, 125, 52, 193),

      //  // Border color
      //     width: 2, // Border width
      //   ),
        boxShadow: [
          
          BoxShadow(
           color:  Color(0xFF4423B1), // Drop shadow color
            spreadRadius: 2,
            blurRadius: 5,
          
            offset: Offset(0, 3), // Changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content
          children: [
           Image.asset(
  'assets/google.png', // اسم الصورة
  width: 30, // عرض الصورة (يمكنك تعديله حسب الحاجة)
  height: 30, // ارتفاع الصورة (يمكنك تعديله حسب الحاجة)
),
            SizedBox(width: 25), // Space between icon and text
            Text(
              text,
              style: TextStyle(
                color: const Color.fromARGB(255, 60, 19, 130), // Change text color to black for visibility
                fontSize: 23,
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ],
        ),
      ),
    );
  }


