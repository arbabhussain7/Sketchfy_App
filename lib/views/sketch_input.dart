import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratchify/constant/color.dart';
import 'package:scratchify/constant/list.dart';
import 'package:scratchify/views/scratch.dart';
import 'package:scratchify/widgets/custom_button.dart';

class SketchInputScreen extends StatefulWidget {
  const SketchInputScreen({super.key});

  @override
  State<SketchInputScreen> createState() => _SketchInputScreenState();
}

class _SketchInputScreenState extends State<SketchInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Created Image from Text prompt",
                style: GoogleFonts.montserrat(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: blackAccentColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Art Style",
                    style: GoogleFonts.montserrat(
                        fontSize: 14.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                height: 170.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfTextSketch.length,
                  itemBuilder: (context, index) {
                    return Container(
                        width: 122,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(listOfImageSketch[index])),
                            borderRadius: BorderRadius.circular(33.r)),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                width: 121.w,
                                height: 22.h,
                                decoration: BoxDecoration(
                                    color: blackColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.r),
                                        bottomRight: Radius.circular(12.r))),
                                child: Center(
                                  child: Text(
                                    listOfTextSketch[index],
                                    style:
                                        GoogleFonts.montserrat(fontSize: 13.r),
                                  ),
                                ))));
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 6.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 53.h,
              ),
              RichText(
                text: TextSpan(
                  text: "Enter your Art ",
                  style: GoogleFonts.montserrat(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: blackAccentColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "requirement",
                      style: GoogleFonts.montserrat(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 333.w,
                height: 221.h,
                decoration: BoxDecoration(
                    border: Border.all(color: lightestgreyAccentColor),
                    color: greyAccentColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.r)),
                child: TextFormField(
                  maxLines: 12,
                  style: GoogleFonts.montserrat(
                    fontSize: 12.sp,
                    color: blackAccentColor,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Art Description",
                      contentPadding: EdgeInsets.only(left: 12.w, top: 12.h),
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 72.w),
                child: CustomButton(
                    texts: "Submit ",
                    onPressed: () {
                      Get.to(() => ScratchScreen());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
