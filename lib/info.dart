import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovela/colors.dart';
import 'package:lovela/forgotpin.dart';
import 'package:lovela/hometown.dart';
import 'package:lovela/identity.dart';
import 'package:lovela/mybutton.dart';
import 'package:lovela/notification.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool isButtonEnabled = false;
  String? errorMessage;

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();

  void validateFields() {
    setState(() {
      isButtonEnabled = firstNameController.text.trim().isNotEmpty &&
          lastNameController.text.trim().isNotEmpty &&
          nicknameController.text.trim().isNotEmpty;
    });
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    nicknameController.dispose();
    super.dispose();
  }

  Widget buildTextField({
    required String hint,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      child: SizedBox(
        height: 46,
        child: TextField(
          controller: controller,
          onChanged: (_) => validateFields(),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.deepRed),
              borderRadius: BorderRadius.circular(15),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Hometown(),
                        ));
                      },
                      icon: const Icon(Icons.arrow_back, size: 35),
                    ),
                    const SizedBox(width: 50),
                    Image.asset('assets/Frame1.png'),
                    const SizedBox(width: 55),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Hometown(),
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(18, 18, 29, 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.close, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your basic info',
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'This is how your Pals see you!',
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
              const SizedBox(height: 20),
              buildTextField(
                  hint: 'Your First Name', controller: firstNameController),
              buildTextField(
                  hint: 'Your Last Name', controller: lastNameController),
              buildTextField(
                  hint: 'Your Preferred Nickname',
                  controller: nicknameController),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 32),
                child: CustomButton(
                  text: '          Sign In',
                  textColor: Colors.white,
                  textstyle: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  backgroundColor: isButtonEnabled
                      ? AppColors.deepRed
                      : Colors.grey.shade400,
                  onPressed: () {
                    if (isButtonEnabled) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Identity(),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Please fill in all fields"),
                        duration: Duration(seconds: 2),
                      ));
                    }
                  },
                  style: const TextStyle(),
                ),
              ),
              const SizedBox(height: 8),
              Image.asset('assets/Vector.png'),
            ],
          ),
        ),
      ),
    );
  }
}
