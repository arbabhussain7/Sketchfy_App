import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratchify/constant/color.dart';
import 'package:scratchify/widgets/custom_button.dart';

class ScratchScreen extends StatefulWidget {
  const ScratchScreen({super.key});

  @override
  State<ScratchScreen> createState() => _ScratchScreenState();
}

class _ScratchScreenState extends State<ScratchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios_new)),
              SizedBox(
                height: 54.h,
              ),
              Center(
                child: Text(
                  "Your Art is Ready ",
                  style: GoogleFonts.montserrat(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: blackAccentColor,
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Center(
                child: Container(
                  width: 322.w,
                  height: 322.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: lightestgreyAccentColor),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Center(child: CustomButton(texts: "Download", onPressed: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
