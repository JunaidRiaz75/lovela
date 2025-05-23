/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/screen6.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  final TextEditingController _emailController = TextEditingController();
  bool isButtonEnabled = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _validateEmail() {
    setState(() {
      String email = _emailController.text;
      if (_isValidEmail(email)) {
        isButtonEnabled = true;
        errorMessage = null;
      } else {
        isButtonEnabled = false;
        errorMessage = "Please enter a valid email address";
      }
    });
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"); // Email validation pattern
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.beigeTop,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/icon6.png',
                width: 120,
                height: 120,
              ),
              SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  border: Border(
                    top: BorderSide(color: AppColors.deepRed, width: 1),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Enter your Email',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              color: AppColors.bgDarkest,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // First Name Input
                    SizedBox(
                      width: 290,
                      height: 56,
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'First Email',
                          labelStyle: TextStyle(
                              color: AppColors.bgDarker.withOpacity(0.5)),
                          hintText: 'Enter your Email ',
                          hintStyle: TextStyle(
                              color: AppColors.bgDarker.withOpacity(0.5)),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: AppColors.deepRed),
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
                          errorText: errorMessage,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                      ),
                      child: Text(
                        'I do not wish to receive marketing communication about Lovela products and services.',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Continue Button
                    GestureDetector(
                      onTap: isButtonEnabled
                          ? () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Screen6(),
                              ));
                            }
                          : null,
                      child: Container(
                        width: 290,
                        height: 56,
                        decoration: BoxDecoration(
                          color: isButtonEnabled
                              ? AppColors.deepRed
                              : Color(0xFFBAA2A3), // Dim color when disabled
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

                    SizedBox(height: 10),
                    Image.asset(
                      'assets/image3.png',
                      width: 280,
                      height: 280,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */
