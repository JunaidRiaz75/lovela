import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lovela/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color textColor;
  final Text textstyle;
  const CustomButton(
      {super.key,
      required this.text,
      this.icon,
      required this.backgroundColor,
      required this.textColor,
      required this.onPressed,
      required TextStyle style,
      required this.textstyle,
      required});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 280,
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.deepRed,
              size: 24,
            ),
            SizedBox(width: 40),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon? prefixIcon;
  final double width;
  final double height;

  const EmailTextField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.width = double.infinity, // Default to full width
    this.height = 50, // Default height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromRGBO(18, 18, 29, 0.3)),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        ),
      ),
    );
  }
}

class PhoneNumberField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final double width;
  final double height;
  final ValueChanged<String>? onChanged;

  const PhoneNumberField({
    super.key,
    required this.controller,
    this.hintText = '',
    this.keyboardType = TextInputType.phone,
    this.obscureText = false,
    this.width = double.infinity,
    this.height = 50,
    this.onChanged,
  });

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String selectedCountryCode = '+1'; // Default country code

  final List<String> countryCodes = [
    '+1', // USA
    '+92', // Pakistan
    '+91', // India
    '+44', // UK
    '+61', // Australia
    '+81', // Japan
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Row(
        children: [
          // Country Code Dropdown
          Container(
            width: 70,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedCountryCode,
                items: countryCodes
                    .map((code) => DropdownMenuItem(
                          value: code,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              code,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountryCode = value!;
                  });
                },
              ),
            ),
          ),
          const SizedBox(width: 4),
          // Phone Number Input Field
          Expanded(
            child: TextField(
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText,
              onChanged: widget.onChanged,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle:
                    const TextStyle(color: Color.fromRGBO(18, 18, 29, 0.3)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 14.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
