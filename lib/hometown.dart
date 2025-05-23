import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/hithere.dart';
import 'package:lovela/info.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/notification.dart';

class Hometown extends StatefulWidget {
  const Hometown({super.key});

  @override
  State<Hometown> createState() => _HometownState();
}

class _HometownState extends State<Hometown> {
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
                  top: 35,
                  left: 20,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => noti(),
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
                          builder: (context) => noti(),
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
                'Whats your hometown',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.bgDarkest,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  width: 362,
                  height: 46,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      suffixIcon: Icon(Icons.mic),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Image.asset('assets/Map.png'),
              SizedBox(
                height: 15,
              ),

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
                    builder: (context) => Info(),
                  ));
                },
              ), // Continue Button
            ],
          ),
        ),
      ),
    );
  }
}
