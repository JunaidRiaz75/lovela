import 'package:flutter/material.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/newscr1.dart';
import 'package:lovela/signin.dart';
import 'package:lovela/verification.dart';

class Forgotpin extends StatefulWidget {
  const Forgotpin({super.key});

  @override
  State<Forgotpin> createState() => _ForgotpinState();
}

class _ForgotpinState extends State<Forgotpin> {
  bool isButtonEnabled = false;
  String? errorMessage;
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Signin(),
                          ));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 35,
                        )),
                    SizedBox(width: 220),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Signin(),
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                              18, 18, 29, 0.2), // background color
                          shape: BoxShape.circle, // or BoxShape.rectangle
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.black, // icon color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 71),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 45),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Enter your phone number ',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.bgDarkest,
                          fontFamily: 'roboto')),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 45),
                child: Text(
                    'Enter your phone number to create account and start today!',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.b,
                        fontFamily: 'roboto')),
              ),
              SizedBox(height: 72),
              PhoneNumberField(
                controller: phoneController,
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
                obscureText: false,
                width: 290,
                height: 50,
                onChanged: (value) {
                  setState(() {
                    isButtonEnabled = value.isNotEmpty;
                    errorMessage = null; // Clear error message
                  });
                },
              ),
              SizedBox(height: 74),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 32),
                child: CustomButton(
                  text: '              Next',
                  textColor: Colors.white,
                  textstyle: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  backgroundColor: isButtonEnabled
                      ? AppColors.deepRed
                      : Colors.grey.shade400,
                  onPressed: () {
                    if (isButtonEnabled) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Verification(),
                      ));
                    } else {
                      // Show error message or handle disabled button state
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text(errorMessage ?? "Please fill in all fields"),
                        duration: Duration(seconds: 2),
                      ));
                    }
                  },
                  style: const TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
