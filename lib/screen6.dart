import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/screen7.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  int selectedMonth = 8; // Default: September (index starts at 0)
  int selectedDay = 20; // Default: 20
  int selectedYear = 1996; // Default: 1996

  bool isButtonEnabled = false;
  String zodiacSign = "";

  final List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec"
  ];

  final List<int> years = List.generate(
      100, (index) => DateTime.now().year - index); // Last 100 years

  void _validateInputs() {
    setState(() {
      isButtonEnabled = true; // Enable button after selection
      zodiacSign = getZodiacSign(selectedMonth, selectedDay);
    });
  }

  String getZodiacSign(int month, int day) {
    List<List<int>> zodiacDates = [
      [20, 19], // Capricorn (Jan 20 - Feb 19)
      [19, 20], // Aquarius
      [20, 20], // Pisces
      [20, 21], // Aries
      [21, 21], // Taurus
      [21, 21], // Gemini
      [22, 22], // Cancer
      [23, 22], // Leo
      [23, 22], // Virgo
      [23, 23], // Libra
      [23, 22], // Scorpio
      [22, 21], // Sagittarius
      [21, 19] // Capricorn
    ];

    List<String> zodiacNames = [
      "Capricorn",
      "Aquarius",
      "Pisces",
      "Aries",
      "Taurus",
      "Gemini",
      "Cancer",
      "Leo",
      "Virgo",
      "Libra",
      "Scorpio",
      "Sagittarius",
      "Capricorn"
    ];

    return day < zodiacDates[month][0]
        ? zodiacNames[month]
        : zodiacNames[month + 1];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.beigeTop,
        body: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset('assets/icon7.png', width: 80, height: 80),
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
                      'Select your birthday',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          color: AppColors.bgDarkest,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Date Selection Row (Three Scroll Views)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildWheelPicker(
                          items: months,
                          selectedIndex: selectedMonth,
                          onChanged: (index) {
                            setState(() {
                              selectedMonth = index;
                              _validateInputs();
                            });
                          },
                        ),
                        _buildWheelPicker(
                          items: List.generate(
                              31, (index) => (index + 1).toString()),
                          selectedIndex: selectedDay - 1,
                          onChanged: (index) {
                            setState(() {
                              selectedDay = index + 1;
                              _validateInputs();
                            });
                          },
                        ),
                        _buildWheelPicker(
                          items: years.map((e) => e.toString()).toList(),
                          selectedIndex: years.indexOf(selectedYear),
                          onChanged: (index) {
                            setState(() {
                              selectedYear = years[index];
                              _validateInputs();
                            });
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Zodiac Sign Text
                    if (isButtonEnabled)
                      Text(
                        "You are a $zodiacSign",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.deepRed,
                          ),
                        ),
                      ),

                    const SizedBox(height: 30),

                    // Continue Button
                    GestureDetector(
                      onTap: isButtonEnabled
                          ? () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Screen7(),
                              ));
                            }
                          : null,
                      child: Container(
                        width: 290,
                        height: 56,
                        decoration: BoxDecoration(
                          color: isButtonEnabled
                              ? AppColors.deepRed
                              : const Color(
                                  0xFFBAA2A3), // Dim color when disabled
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

                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/image4.png',
                      width: 280,
                      height: 280,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build ListWheelScrollView for Months, Days, and Years
  Widget _buildWheelPicker(
      {required List<String> items,
      required int selectedIndex,
      required Function(int) onChanged}) {
    return Expanded(
      child: SizedBox(
        height: 150, // Controls wheel size
        child: ListWheelScrollView.useDelegate(
          itemExtent: 40, // Spacing between items
          perspective: 0.002, // Depth effect
          physics: FixedExtentScrollPhysics(),
          controller: FixedExtentScrollController(initialItem: selectedIndex),
          onSelectedItemChanged: onChanged,
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              bool isSelected = index == selectedIndex;
              return Center(
                child: Text(
                  items[index],
                  style: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? AppColors.deepRed : Colors.black,
                  ),
                ),
              );
            },
            childCount: items.length,
          ),
        ),
      ),
    );
  }
}
