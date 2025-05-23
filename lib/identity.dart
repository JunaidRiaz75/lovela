import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/info.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/newscr1.dart';
import 'package:lovela/notification.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  final List<String> identityOptions = [
    'Male',
    'Female',
    'Non-binary',
    'Other'
  ];
  final List<Color> blockColors = [
    Colors.blue.shade100,
    Colors.pink.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
  ];
  int selectedIndex = -1;
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
                            builder: (context) => Info(),
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
                          builder: (context) => Info(),
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
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Choose your Identity',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.bgDarkest,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Select options that apply  ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.bgDarkest,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: identityOptions.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: blockColors[index],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.grey.shade300,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            identityOptions[index],
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 74),
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
                    builder: (context) => Newscr1(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
