import 'package:flutter/material.dart';
import 'package:mehra_app/shared/components/components.dart';
import 'package:mehra_app/shared/components/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.lightprimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,
              child: Column(
                children: [
                  GradientButton(
                      onPressed: () {},
                      text: 'المتابعة بدون تسجيل دخول',
                      width: 336,
                      height: 69),
                  SizedBox(height: 60), // Space between buttons
                  GradientButton(
                      onPressed: () {},
                      text: 'انشاء حساب تجاري ',
                      width: 336,
                      height: 69),
                  SizedBox(height: 60),
                  buildGoogleButton(text: 'المتابعة بحساب جوجل', onPressed: () {}),
                  SizedBox(height: 60), // Space between button and text
                  Text(
                    'ليس لديك حساب! انشئ حساب',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

          Expanded(child: Container(
          )), // This expands to take available space
          GradientButton(  onPressed: () {  },text: 'المتابعة بدون تسجيل دخول',width: 336 ,height: 69 ),
          SizedBox(height: 50), // Space between buttons
         GradientButton(  onPressed: () {  },text: 'انشاء حساب تجاري ' ,width: 336 ,height: 69),
          SizedBox(height: 50),
          buildWhiteButton(text: 'متابعة بحساب قوقل',  onPressed: () {  }),
          SizedBox(height: 20), // Space between button and text
          Text(
            'هل لديك حساب! تسجيل الدخول',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,

            ),
          ),
          SizedBox(height: 20), // Space between text and image
          Expanded(child: bottomImage())
        ],
      ),
    );
  }
}
