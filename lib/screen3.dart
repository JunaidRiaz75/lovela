import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/screen2.dart';
import 'package:lovela/screen4.dart';
import 'package:lovela/screen6.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  bool isButtonEnabled = false; // State to track button enable/disable status

  @override
  void initState() {
    super.initState();
    for (var controller in _controllers) {
      controller.addListener(_checkInputFields); // Listen for input changes
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.removeListener(_checkInputFields); // Remove listeners
      controller.dispose();
    }
    super.dispose();
  }

  void _checkInputFields() {
    // Check if all fields are filled
    bool allFieldsFilled =
        _controllers.every((controller) => controller.text.isNotEmpty);
    setState(() {
      isButtonEnabled = allFieldsFilled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.beigeTop,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 75),
              Image.asset(
                'assets/icon4.png',
                width: 120,
                height: 120,
              ),
              SizedBox(height: 50),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      border: Border(
                          top: BorderSide(color: AppColors.deepRed, width: 1))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 49, left: 35),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Enter verification code',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.w700),
                                color: AppColors.bgDarkest),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: [
                            Text(
                              'Enter your 6 digit code sent to',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: AppColors.bgDarkest)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Screen2(),
                                  ));
                                },
                                child: Text(
                                  '+925434234',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: AppColors.deepRed)),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 26),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(6, (index) {
                            return SizedBox(
                              width: 40,
                              height: 36,
                              child: TextFormField(
                                controller: _controllers[index],
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.deepRed),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.deepRed, width: 1.0),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.deepRed, width: 1.0),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 5) {
                                    FocusScope.of(context).nextFocus();
                                  } else if (value.isEmpty && index > 0) {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 35, right: 22, top: 20),
                        child: Text(
                          'By continuing, you agree to receive calls or SMS messages, including those sent via auto-dialer, from Lovel and its affiliates at the number you provided.',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColors.bgDarkest)),
                        ),
                      ),
                      SizedBox(height: 50),
                      InkWell(
                        onTap: isButtonEnabled
                            ? () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Screen4(),
                                ));
                              }
                            : null, // Disable tap when button is not enabled
                        child: Container(
                          width: 295,
                          height: 56,
                          decoration: BoxDecoration(
                            color: isButtonEnabled
                                ? AppColors.deepRed
                                : Color(0xFFBAA2A3), // Dim color
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Text(
                              'Continue',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
