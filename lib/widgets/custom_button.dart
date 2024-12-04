import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratchify/constant/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.texts,
    required this.onPressed,
  });
  final String texts;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(321.w, 43.h),
          backgroundColor: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r))),
      child: Text(
        texts,
        style: GoogleFonts.montserrat(
            fontSize: 14.sp, fontWeight: FontWeight.w700, color: whiteColor),
      ),
    );
  }
}
