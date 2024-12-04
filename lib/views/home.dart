import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratchify/constant/color.dart';
import 'package:scratchify/constant/list.dart';
import 'package:scratchify/controllers/home_controller.dart';
import 'package:scratchify/generated/assets.dart';
import 'package:scratchify/views/sketch_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

HomeController controller = Get.put(HomeController());

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12.w,
                    ),
                    const CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage(Assets.image1)),
                    SizedBox(
                      width: 12.w,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Welcome",
                        style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: greyAccentColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "\nAli Hamza",
                            style: GoogleFonts.montserrat(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: blackAccentColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  width: double.infinity,
                  height: 169.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: primaryColor.withOpacity(0.8)),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Hi , Total Credit:  20",
                            style: GoogleFonts.montserrat(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: whiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 22.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Select your",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15.sp,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "transaction visibility below",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15.sp,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 19.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: whiteColor),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: Text(
                                      "Buys Credit ",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: whiteColor),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 38.w, vertical: 5.5.h),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: whiteColor),
                                          borderRadius:
                                              BorderRadius.circular(12.r)),
                                      child: Image.asset(
                                        Assets.adsIcon,
                                        width: 22.w,
                                        height: 22.h,
                                        color: whiteColor,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Expanded(
                            child: Image.asset(
                              Assets.coin,
                              width: 102.w,
                              height: 102.h,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Select you categories",
                  style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: blackAccentColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => SketchInputScreen());
                        },
                        child: Container(
                          width: 121.w, height: 42.h,
                          // padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            // border: Border.all(color: primaryColor),
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Center(
                            child: Text(
                              "Text to Sketch",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                      child: Container(
                        width: 131.w, height: 42.h,
                        // padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            "Image to Sketch",
                            style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Expanded(
                      child: Container(
                        width: 121.w, height: 42.h,
                        // padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Text(
                            "Watch Ads",
                            style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Our Predicted Results",
                  style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: blackAccentColor),
                ),
                SizedBox(
                  height: 22.h,
                ),
                SizedBox(
                  height: 360.h,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: listOfImages.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          width: 171.w,
                          height: 188.h,
                          padding: EdgeInsets.only(top: 84.h),
                          decoration: BoxDecoration(
                              color: blackColor.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15.r),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(listOfImages[index]))),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
