import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scratchify/constant/color.dart';
import 'package:scratchify/views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Scratchify',
          theme: ThemeData(
            scaffoldBackgroundColor: whiteColor,
            primarySwatch: Colors.blue,
            primaryColor: primaryColor,
            progressIndicatorTheme: const ProgressIndicatorThemeData(
              color: primaryColor,
              circularTrackColor: primaryColor,
            ),
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: primaryColor,
                selectionColor: primaryColor.withOpacity(0.5),
                selectionHandleColor: primaryColor),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
