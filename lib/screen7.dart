/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/screen8.dart'; // Next screen

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  String selectedOption = ""; // Stores selected option ("enable" or "disable")

  void _selectOption(String option) {
    setState(() {
      selectedOption = option;
    });

    // Navigate to the next screen after selection
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const Screen8()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.beigeTop,
        body: Column(
          children: [
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Image.asset('assets/icon8.png', width: 80, height: 80),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                    const SizedBox(height: 40),
                    Text(
                      'Never Miss Out!!',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          color: AppColors.bgDarkest,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Enable Notification Button
                    GestureDetector(
                      onTap: () => _selectOption("enable"),
                      child: Container(
                        width: 290,
                        height: 56,
                        decoration: BoxDecoration(
                          color: selectedOption == "enable"
                              ? AppColors.deepRed
                              : Colors.transparent,
                          border: Border.all(
                            color: AppColors.deepRed,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: Text(
                            'Enable Notification',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: selectedOption == "enable"
                                    ? Colors.white
                                    : AppColors.deepRed,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Disable Notification Button
                    GestureDetector(
                      onTap: () => _selectOption("disable"),
                      child: Container(
                        width: 290,
                        height: 56,
                        decoration: BoxDecoration(
                          color: selectedOption == "disable"
                              ? AppColors.deepRed
                              : Colors.transparent,
                          border: Border.all(
                            color: AppColors.deepRed,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: Text(
                            'Disable Notification',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: selectedOption == "disable"
                                    ? Colors.white
                                    : AppColors.deepRed,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */
