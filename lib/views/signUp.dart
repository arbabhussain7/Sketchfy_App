// import 'package:augment/views/authentication/signin_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratchify/constant/color.dart';
import 'package:scratchify/generated/assets.dart';
import 'package:scratchify/views/login.dart';
import 'package:scratchify/widgets/custom_button.dart';
import 'package:scratchify/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Center(
                    child: Image.asset(Assets.LogoIcon,
                        width: 141.w, height: 141.h)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Register your account",
                        style: GoogleFonts.montserrat(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Already have an account?",
                            style: GoogleFonts.montserrat(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: greyColor),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => LoginScreen());
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.montserrat(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Text(
                        "Username",
                        style: GoogleFonts.montserrat(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextfield(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Username ";
                          }
                          return null;
                        },
                        hinttext: "Ahmaed Shah",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Email",
                        style: GoogleFonts.montserrat(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextfield(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Enter your email";
                          } else if (!GetUtils.isEmail(value)) {
                            return " Please enter valid email ";
                          }
                          return null;
                        },
                        hinttext: "iamzaibi905@gmail.com",
                      ),

                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.montserrat(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextfield(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter your password";
                            }
                            return null;
                          },
                          isPassword: true,
                          secureText: true,
                          obscureText: true,
                          hinttext: "must have 8 charcters",
                          inputType: TextInputType.visiblePassword),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        "Confirm Password",
                        style: GoogleFonts.montserrat(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextfield(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter your password";
                            }
                            return null;
                          },
                          isPassword: true,
                          secureText: true,
                          obscureText: true,
                          hinttext: "must have 8 charcters",
                          inputType: TextInputType.visiblePassword),
                      SizedBox(
                        height: 40.h,
                      ),
                      // CustomButton(texts: "Create Account", onPressed: () {}),

                      Center(
                        child: CustomButton(
                          texts: "Create Account",
                          onPressed: () {
                            Get.to(() => LoginScreen());
                          },
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
