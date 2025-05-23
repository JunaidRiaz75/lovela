/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String? selectedCountryCode = '+1';
  TextEditingController phoneController = TextEditingController();
  List<String> countryCodes = ['+92', '+1', '+91', '+61', '+81'];
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    // Add listener to validate phone number
    phoneController.addListener(() {
      final input = phoneController.text;
      setState(() {
        // Enable the button only if the input length is exactly 10 digits
        isButtonEnabled = input.length == 10;
      });
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.beigeTop,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 23),
                child: Row(children: [
                  SizedBox(
                    width: 6,
                  ),
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/icon3.png',
                width: 120,
                height: 120,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 502.5,
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
                            'Enter your phone number',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                                color: AppColors.bgDarkest),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: [
                            Container(
                              height: 47,
                              width: 60,
                              margin: EdgeInsetsDirectional.only(bottom: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.deepRed, width: 1),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  borderRadius: BorderRadius.circular(8),
                                  value: selectedCountryCode,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedCountryCode = newValue;
                                    });
                                  },
                                  items: countryCodes
                                      .map<DropdownMenuItem<String>>(
                                          (String code) {
                                    return DropdownMenuItem<String>(
                                      value: code,
                                      child: Text(code),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: 220,
                              height: 55,
                              child: TextFormField(
                                controller: phoneController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  labelText: 'Phone Number',
                                  labelStyle:
                                      TextStyle(color: AppColors.bgDarker),
                                  hintText: 'Enter phone number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: AppColors.deepRed),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.deepRed,
                                        width: 1.0), // Border when not focused
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.deepRed,
                                        width: 1.0), // Border when focused
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  // Show the country code in the field
                                ),
                                keyboardType: TextInputType.phone,
                                //maxLength: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 35),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Lovela will send you text with a verification code. Message and date rate may apply.',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 12, color: AppColors.bgDarkest)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: isButtonEnabled
                            ? () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Screen3(),
                                ));
                              }
                            : null,
                        child: Container(
                            width: 295,
                            height: 56,
                            decoration: BoxDecoration(
                                color: isButtonEnabled
                                    ? AppColors.deepRed
                                    : Color(0xFFBAA2A3),
                                borderRadius: BorderRadius.circular(32)),
                            child: Center(
                              child: Text(
                                'Continue',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Colors.white)),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 */
