import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/hithere.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/notification.dart';

class birthday extends StatefulWidget {
  const birthday({super.key});

  @override
  State<birthday> createState() => _birthdayState();
}

class _birthdayState extends State<birthday> {
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
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Hithere(),
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
                        builder: (context) => Hithere(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(
                            18, 18, 29, 0.2), // background color
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
            SizedBox(height: 31),

            Text(
              'Select your birthday',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.bgDarkest,
                ),
              ),
            ),
            const SizedBox(height: 53),

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
                  items: List.generate(31, (index) => (index + 1).toString()),
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

            const SizedBox(height: 98),

            // Zodiac Sign Text
            if (isButtonEnabled)
              Text(
                "You are a $zodiacSign",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.bgDarkest,
                  ),
                ),
              ),

            const SizedBox(height: 28),

            // Continue Button
            CustomButton(
              text: '         Continue',
              textColor: Colors.white,
              textstyle: Text(
                'Sign Up',
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
                  builder: (context) => noti(),
                ));
              },
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
        // Controls wheel width,
        height: 150, // Controls wheel size
        child: ListWheelScrollView.useDelegate(
          itemExtent: 50, // Spacing between items
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
