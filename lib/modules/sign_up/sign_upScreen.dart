import 'package:flutter/material.dart';
import 'package:mehra_app/shared/components/components.dart';
import 'package:mehra_app/shared/components/constants.dart';

class SignUpscreen extends StatefulWidget {
  const SignUpscreen({super.key});

  @override
  State<SignUpscreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpscreen> {
  final _formKey = GlobalKey<FormState>();
  String? selectedCountryCode = "+967"; // Default Yemen country code
  final List<String> countryCodes = [
    "+1",   // USA
    "+44",  // UK
    "+91",  // India
    "+967", // Yemen
    // Add more country codes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevents the card from moving up
      body: Stack(
        children: [
          Container(
            color: MyColor.lightprimaryColor, // Background color
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/bottom.png', // Make sure to adjust the path to the appropriate image
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView( // Allows scrolling when the keyboard appears
              child: Center(
                child: Container(
                  width: 383,
                  height: 590,
                  child: Card(
                    color: Colors.white,
                    shadowColor: Color(0xFF000000), // Drop shadow color
                    margin: EdgeInsets.only(bottom: 3.0),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Form( // Form widget for validation
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text(
                                'اسم المتجر',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextFormField( // Name of the store
                              decoration: InputDecoration(
                                hintText: 'ادخل اسم المتجر',
                                prefixIcon: Icon(Icons.home),
                                prefixIconColor: MyColor.purpleColor,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'يرجى إدخال اسم المتجر';
                                }
                                return null; // Return null if valid
                              },
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              'رقم الهاتف',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end, // Aligns items in the center
                              children: [
                                Expanded(
                                  flex: 1,
                                  
                                  child: DropdownButton<String>(
                                    value: selectedCountryCode,
                                    items: countryCodes.map((String code) {
                                      return DropdownMenuItem<String>(
                                        value: code,
                                        child: Text(code),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedCountryCode = newValue;
                                      });
                                      
                                    },
                                
                                  ),
                                ),
                                SizedBox(width: 10.0), // Space between dropdown and text field
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'ادخل رقم الهاتف',
                                      // prefixIcon: Icon(Icons.phone_android_outlined),
                                      // prefixIconColor: MyColor.purpleColor,
                                    ),
                                    keyboardType: TextInputType.phone,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'يرجى إدخال رقم الهاتف';
                                      }
                                      // Validate Yemen phone number format
                                      if (selectedCountryCode == "+967" && value.length != 9) {
                                        return 'يجب أن يحتوي رقم الهاتف على 9 أرقام';
                                      }
                                      return null; // Return null if valid
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              'كلمة المرور',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField( // Password field
                              decoration: InputDecoration(
                                hintText: 'ادخل كلمة المرور',
                                prefixIcon: Icon(Icons.lock_clock_outlined),
                                prefixIconColor: MyColor.purpleColor,
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'يرجى إدخال كلمة المرور';
                                }
                                if (value.length < 8) {
                                  return 'يجب أن تحتوي كلمة المرور على 8 أحرف على الأقل';
                                }
                                if (!RegExp(r'[A-Z]').hasMatch(value)) {
                                  return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';
                                }
                                if (!RegExp(r'[0-9]').hasMatch(value)) {
                                  return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';
                                }
                                return null; // Return null if the password is valid
                              },
                            ),
                            SizedBox(height: 40),
                            Center(
                              child: GradientButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    // Proceed with the sign-up process
                                  }
                                },
                                text: 'التحقق',
                                width: 319,
                                height: 67,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}