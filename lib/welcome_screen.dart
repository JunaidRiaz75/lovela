/* import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/phone.dart';
import 'package:lovela/widgets/mybutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 112.h),
            child: Image.asset('images/vector.png'),
          ),
          Text(
            "Lovela",
            style: GoogleFonts.playfairDisplay(
              textStyle: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.deepRed,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            "Find your spark, where love \n        begins with a rose. ",
            style: GoogleFonts.playfairDisplay(
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.bgDarkest,
              ),
            ),
          ),
          SizedBox(height: 91.h),
          CustomButton(
            text: "Login with Phone",
            textColor: Colors.white,
            icon: Icons.call_sharp,
            backgroundColor: AppColors.deepRed,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhoneNumberScreen(),
                  ));
            },
          ),
          SizedBox(height: 25.h),
          CustomButton(
            textColor: AppColors.bgDarkest,
            text: "Login with Email",
            icon: Icons.alternate_email_sharp,
            backgroundColor: AppColors.deepRed.withOpacity(0.3),
            onPressed: () {},
          ),
          SizedBox(height: 32.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Do not have an account? ",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.deepRed,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: const Color.fromRGBO(22, 22, 22, 1),
                  fontSize: 16.sp,
                  wordSpacing: 0.5,
                ),
                children: [
                  const TextSpan(text: 'By signing up for '),
                  const TextSpan(
                    text: 'Lovela',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: ' you agree to our '),
                  TextSpan(
                    text: 'Terms of Service',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(
                      text: '. Learn how we process your data in our '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Cookies',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(text: '.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */