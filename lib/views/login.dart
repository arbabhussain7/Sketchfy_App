import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratchify/constant/color.dart';
import 'package:scratchify/generated/assets.dart';
import 'package:scratchify/views/home.dart';
import 'package:scratchify/views/signUp.dart';
import 'package:scratchify/widgets/custom_button.dart';
import 'package:scratchify/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final emailcontroller = TextEditingController();
  // final passwordcontroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22.h,
              ),
              Center(
                child: Image.asset(
                  Assets.LogoIcon,
                  width: 141.w,
                  height: 141.h,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                    Text(
                      "Login to your account",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff212121)),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                      suffixIcons: null,
                      inputType: TextInputType.emailAddress,
                      hinttext: "RTechnologies@gmail.com",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return " Please Your Enter Email";
                        } else if (!GetUtils.isEmail(value)) {
                          return " Please Enter Valid Email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Password ";
                          }
                          return null;
                        },
                        inputType: TextInputType.visiblePassword,
                        suffixIcons: null,
                        secureText: true,
                        isPassword: true,
                        obscureText: true,
                        hinttext: "must have 8 charcters"),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.montserrat(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: textColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 170.h,
                    ),
                    CustomButton(
                        texts: "Login",
                        onPressed: () {
                          Get.to(() => HomeScreen());
                        }),
                    SizedBox(
                      height: 12.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(321.w, 43.h),
                          backgroundColor: whiteColor,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(6.r))),
                      child: Text(
                        "Signup",
                        style: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: primaryColor),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
