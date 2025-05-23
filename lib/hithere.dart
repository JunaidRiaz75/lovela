import 'package:flutter/material.dart';
import 'package:lovela/birthday.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/forgotpin.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/newscr1.dart';
import 'package:lovela/verification.dart';

class Hithere extends StatefulWidget {
  const Hithere({super.key});

  @override
  State<Hithere> createState() => _HithereState();
}

class _HithereState extends State<Hithere> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Verification(),
                          ));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 35,
                        )),
                    SizedBox(width: 50),
                    Image.asset('assets/Frame1.png'),
                    SizedBox(width: 55),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Verification(),
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
              SizedBox(height: 23),
              Image.asset('assets/hi.png'),
              SizedBox(height: 16),
              Text(
                'Hi there!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: AppColors.bgDarkest,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 32),
                child: Text(
                  'Lets fill all your information and get started with your journey on lovela.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bgDarkest,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(height: 55),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 32),
                child: CustomButton(
                  text: '              Next',
                  textColor: Colors.white,
                  textstyle: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  style: const TextStyle(),
                  backgroundColor: AppColors.darkShade1,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => birthday(),
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
