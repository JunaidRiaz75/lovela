import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
// Next screen

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  final TextEditingController _searchController = TextEditingController();

  void _performSearch() {
    String searchText = _searchController.text.trim();
    if (searchText.isNotEmpty) {
      print("Searching for: $searchText"); // Replace with actual search logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.beigeTop,
        body: Column(
          children: [
            SizedBox(height: 40),
            Image.asset('assets/icon9.png', width: 180, height: 180),
            SizedBox(height: 10),
            SizedBox(
              width: 290,
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search my place',
                  hintStyle:
                      TextStyle(color: AppColors.bgDarker.withOpacity(0.5)),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 90,
                      height: 4,
                      child: ElevatedButton(
                        onPressed: _performSearch,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.deepRed,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Search",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: AppColors.deepRed),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.deepRed, width: 1.0),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.deepRed, width: 1.0),
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  border: Border(
                    top: BorderSide(color: AppColors.deepRed, width: 1),
                  ),
                ),
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
