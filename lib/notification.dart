import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/birthday.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/hithere.dart';
import 'package:lovela/hometown.dart';
import 'package:lovela/mybutton.dart';

class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 20,
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => birthday(),
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
                        builder: (context) => birthday(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(
                            18, 18, 29, 0.1), // background color
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
            SizedBox(height: 32),

            Text(
              'Allow Notification',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.bgDarkest,
                ),
              ),
            ),
            SizedBox(height: 104),
            Image.asset('assets/notification.png'),
            SizedBox(height: 104),
            // Continue Button
            CustomButton(
              text: '         Continue',
              textColor: Colors.white,
              textstyle: Text(
                'Comyinue',
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
                  builder: (context) => Hometown(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
