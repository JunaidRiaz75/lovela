/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_validateInputs);
    _lastNameController.addListener(_validateInputs);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  void _validateInputs() {
    setState(() {
      isButtonEnabled = _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty;
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
              SizedBox(height: 50),
              Image.asset(
                'assets/icon5.png',
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
                          'Enter your name',
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
                        controller: _firstNameController,
                        onChanged: (_) => _validateInputs(),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'First Name',
                          labelStyle: TextStyle(
                              color: AppColors.bgDarker.withOpacity(0.5)),
                          hintText: 'Enter First Name',
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
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Last Name Input
                    SizedBox(
                      width: 290,
                      height: 56,
                      child: TextFormField(
                        controller: _lastNameController,
                        onChanged: (_) => _validateInputs(),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          labelText: 'Last Name',
                          labelStyle: TextStyle(
                              color: AppColors.bgDarker.withOpacity(0.5)),
                          hintText: 'Enter Last Name',
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
                        ),
                      ),
                    ),
                    SizedBox(height: 40),

                    // Continue Button
                    GestureDetector(
                      onTap: isButtonEnabled
                          ? () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Screen5(),
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
